import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/ui/widgets/button_app.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.product, this.onPressed});

  final Product product;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(color: Colors.lightBlue, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: product.imageData != null
                ? Image.memory(product.imageData!)
                : Image.asset('assets/img/image.png'),
          ),
          SizedBox(height: 10),
          Text(
            product.name,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 12),
          ButtonApp.dark(text: 'Подробнее', onPressed: onPressed),
        ],
      ),
    );
  }
}