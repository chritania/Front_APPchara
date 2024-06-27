import 'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';

class Menucard extends StatelessWidget {
  final Product product;

  Menucard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(product.productName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text('${product.price}',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
