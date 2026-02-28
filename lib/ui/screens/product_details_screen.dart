import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(product.pathImage),
          Text(product.name),
          Container(child: Text(product.isActive ? "Занято" : "Свободно")),
          PrettyQrView(
            qrImage: QrImage(
              QrCode(8, QrErrorCorrectLevel.H)
                ..addData("${product.name} ${product.isActive}"),
            ),
            decoration: const PrettyQrDecoration(),
          ),
        ],
      ),
    );
  }
}
