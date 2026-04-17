import 'package:flutter_2/data/repository/product_repository.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends Notifier<List<Product>> {
  late final ProductRepository _productRepository;

  @override
  List<Product> build() {
    _productRepository = ProductRepository();
    return [];
  }

  Future<void> loadProducts() async {
    final products = await _productRepository.getProducts();
    state = products;
  }

  Future<void> addProduct(Product product) async {
    await _productRepository.addProduct(product);
    await loadProducts(); // Перезагрузить список из БД
  }

  Future<void> deleteProduct(int id) async {
    await _productRepository.deleteProduct(id);
    state = state.where((p) => p.id != id).toList();
  }

  Future<void> updateProduct(int id, Product product) async {
    await _productRepository.updateProduct(id, product);
    state = state.map((p) => p.id == id ? product : p).toList();
  }
}

var productProvider =
    NotifierProvider<ProductNotifier, List<Product>>(ProductNotifier.new);

