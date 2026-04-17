import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/providers/product_notifier.dart';
import 'package:flutter_2/ui/screens/add_product_screen.dart';
import 'package:flutter_2/ui/screens/product_details_screen.dart';
import 'package:flutter_2/ui/screens/scanner_screen.dart';
import 'package:flutter_2/ui/widgets/product_cart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key, required this.tittle});
  final String tittle;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var products = ref.watch(productProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Котики'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScannerScreen()),
              );
            },
            icon: Icon(Icons.qr_code),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: ProductCart(
              product: products[index],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductScreen()));
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
