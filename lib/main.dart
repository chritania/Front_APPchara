import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(
        title:Center(
          child:Text('APPchara'),
        ),
        backgroundColor:Colors.amber[700],
      ),
      body:Center(
        child:Image.network('https://filipinofoodmovement.weebly.com/uploads/2/2/0/2/22021218/edited/atchara.jpg'),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){},
       backgroundColor:Colors.amber[700],
        child:Icon(
            Icons.add,
            color:Colors.white60,
        )
      ),
    )
  ));
}
