import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar:AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.amberAccent,
      centerTitle: true,
    ),
    body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.5,
            ),
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
    ),
  ),
));

