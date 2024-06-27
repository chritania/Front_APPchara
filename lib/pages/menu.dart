import 'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';
import 'package:untitled1/services/menuCard.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Papaya", price: 149.99),
    Product(productName: "Ampalaya", price: 149.99),
    Product(productName: "Ubod", price: 299.99),
    Product(productName: "Labong", price: 329.99),
    Product(productName: "Burong Bawang", price: 149.99),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor:Colors.white70,
        title: Text(
          'Menu',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: products.map((product)=> Menucard(product: product)).toList(),
          ),
      ),
    );
  }
}
