import 'package:flutter/material.dart';
import 'package:flutter_2/product.dart';
import 'package:flutter_2/product_cart.dart';

class MyFirstPage extends StatelessWidget {
  MyFirstPage({super.key, required this.tittle});
  final String tittle;

  final produts = [
    Product(name: 'Котик 1', pathImage: 'assets/img/image.png'),
    Product(name: 'Котик 1', pathImage: 'assets/img/image.png'),
    Product(name: 'Котик 1', pathImage: 'assets/img/image.png'),
    Product(name: 'Котик 1', pathImage: 'assets/img/image.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: produts.length,
        itemBuilder: (context, index){
        return Padding(padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),child:  ProductCart(product: produts[index]));
      })
    );
  }
}
