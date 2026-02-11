import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget{
  
  const MyFirstPage({super.key, required this.tittle});
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(tittle, style:TextStyle(
            color: Colors.orange,
            fontSize: 32
          ))
        ],
      ),
    );
  }
} 