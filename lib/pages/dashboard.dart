import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber[300],
        elevation: 3.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/menu');
              break;
            case 1:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood, color: Colors.black),
            label: 'Menu'
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile'
        ),
        ],
      ),
      appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Center(
        child:Image.asset(
          'assets/logoo.png',
          width: 200,
        ),
      ),
      centerTitle: true,
      ),
      backgroundColor: Colors.amber[100],
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterCarousel(
              options: CarouselOptions(
                height: 400.0,
                showIndicator: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 700),
                slideIndicator: CircularSlideIndicator(),
              ),
              items: [
                'assets/ampalaya.png',
                'assets/bawang.png',
                'assets/papaya.png',
                'assets/ubod.png',
                'assets/labong.png',
              ].map((String imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

