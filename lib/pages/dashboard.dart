import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Text(
        'Dashboard',
        style: TextStyle(
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
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
            Center(
              child:Image.asset(
                'assets/logo.png',
                width: 360,
                ),
              ),
              SizedBox(height: 120.0,),
              ElevatedButton(
              onPressed: (){
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: Text(
                      'Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
              ),
            SizedBox(height: 20.0,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text(
                  'Profile',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                    'Sign up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                    'Log in',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

