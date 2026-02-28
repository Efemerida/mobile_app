import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/ui/screens/add_product_screen.dart';
import 'package:flutter_2/ui/screens/product_details_screen.dart';
import 'package:flutter_2/ui/widgets/product_cart.dart';

final produts = [
    Product(
      name: 'Котик 1',
      pathImage: 'assets/img/image.png',
      qrData: 'Data 1',
    ),
    Product(
      name: 'Котик 1',
      pathImage: 'assets/img/image.png',
      qrData: 'Data 1',
    ),
    Product(
      name: 'Котик 1',
      pathImage: 'assets/img/image.png',
      qrData: 'Data 1',
      isActive: true,
    ),
    Product(
      name: 'Котик 1',
      pathImage: 'assets/img/image.png',
      qrData: 'Data 1',
      isActive: true,
    ),
  ];

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key, required this.tittle});
  final String tittle;

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: produts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
            child: ProductCart(
              product: produts[index],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: produts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AddProductScreen(),
                  ),
                ).then((_){
                  setState((){});
                });
      }, child: Icon(Icons.add),),
    );
  }
}
