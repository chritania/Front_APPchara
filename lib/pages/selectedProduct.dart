import 'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';

class SelectedProduct extends StatefulWidget {
  final Product product;
  const SelectedProduct({super.key, required this.product});

  @override
  State<SelectedProduct> createState() => _SelectedProductState(product: product);
}

class _SelectedProductState extends State<SelectedProduct> {
  final Product product;
  late double totalAmount;
  int numberOfOrders = 1;
  _SelectedProductState({required this.product});

  @override
  void initState() {
    super.initState();
    totalAmount = product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Order',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,20.0, 10.0, 0),
            child: Column(
              children: [
                Image.network(product.url),
                Text(widget.product.productName),
                Text(widget.product.description),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
          '₱ ${totalAmount.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: (){
                    setState(() {
                      if(numberOfOrders > 1){
                        numberOfOrders -= 1;
                        totalAmount = product.price * numberOfOrders;
                      }
                    });
                  },
                  icon: Icon(Icons.remove)
              ),
              Text(
                  numberOfOrders.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      numberOfOrders += 1;
                      totalAmount = product.price * numberOfOrders;
                    });
                  },
                  icon: Icon(Icons.add)
              ),
            ],
          )
        ],
      ),
    ]
    )
    );
  }
}
