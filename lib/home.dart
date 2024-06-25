import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    child:Image.asset('assets/woman.png'),
                    radius: 50.0,
                  ),
                ),
                Divider(height: 55.0,
                  color: Colors.amberAccent,
                  thickness: 4.0,
                ),
                Row(
                  children: [
                    Icon(
                        Icons.person_2,
                        color:Colors.black,
                    ),
                    SizedBox(width:3.0),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Chritania Dominic M. Perez',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  'YEAR',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.5,
                  ),
                ),
                Text(
                  'Third',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.5,
                  ),
                ),
                Text(
                  'chritaniap@gmail.com',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Add Year'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.amberAccent),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
