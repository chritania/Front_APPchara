import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/pages/dashboard.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/menu.dart';
import 'package:untitled1/pages/signup.dart';

void main() => runApp(MaterialApp(
  initialRoute : '/menu',
routes: {
  '/' : (context)=> Dashboard(),
  '/menu' : (context) => Menu(),
  '/profile' : (context) => Home(),
  '/signup' : (context) => Signup(),
  '/login' : (context) => Login(),
},
));



