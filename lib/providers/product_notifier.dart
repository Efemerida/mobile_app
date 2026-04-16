import 'package:flutter_2/data/repository/product_repository.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends Notifier<List<Product>>{
  
  late final ProductRepository _productRepository;
  
  
  @override
  List<Product> build() {
    _productRepository = ProductRepository();
    return _productRepository.getProducts();
  }


  void addProduct(Product product){
    _productRepository.addProduct(product);
    state.add(product);
  }

}

var productProvider = NotifierProvider<ProductNotifier, List<Product>>(ProductNotifier.new);

