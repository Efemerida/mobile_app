import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Котик по имени "${product.name}"')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: product.imageData != null
                  ? Image.memory(product.imageData!)
                  : Image.asset('assets/img/image.png'),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Имя:', style: Theme.of(context).textTheme.titleMedium),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Статус:', style: Theme.of(context).textTheme.titleMedium),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: product.isActive ? Colors.red : Colors.lightBlue,
                  ),
                  child: Text(product.isActive ? "Занято" : "Свободно",
                      style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 250,
              child: PrettyQrView(
                qrImage: QrImage(
                  QrCode(40, QrErrorCorrectLevel.H)
                    ..addData("${product.name} ${product.isActive}"),
                ),
                decoration: const PrettyQrDecoration(),
              ),
            ),
            SizedBox(height: 12),
            Text('Мой qr', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
