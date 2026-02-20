import 'package:flutter/material.dart';
import 'package:flutter_2/product.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(color: Colors.lightBlue, width: 2),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Image.asset(product.pathImage),
          Text(product.name)
        ],
      ),
    );
  }
}