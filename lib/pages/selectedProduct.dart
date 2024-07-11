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

  Widget loadingDisplay = CircularProgressIndicator();

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
            padding: const EdgeInsets.fromLTRB(30.0,35.0, 30.0, 35.0),
            child: Column(
              children: [
                Image.network(product.url,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },),
                SizedBox(height: 30.0,),
                Column(
                  children: [
                    Text(widget.product.productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
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
