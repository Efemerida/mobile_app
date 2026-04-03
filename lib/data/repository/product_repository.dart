import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/domain/models/user.dart';

class ProductRepository {

  
  static final List<Product> _products = [
    Product(name: 'Котик 1', qrData: 'Data 1'),
    Product(name: 'Котик 1', qrData: 'Data 1'),
    Product(name: 'Котик 1', qrData: 'Data 1', isActive: true),
    Product(name: 'Котик 1', qrData: 'Data 1', isActive: true),
  ];

  List<Product> getProducts() {
    return _products;
  }


  void addProduct(Product product) {
    _products.add(product);
  }
}
