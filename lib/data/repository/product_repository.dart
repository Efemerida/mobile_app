import 'package:drift/drift.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/utils/database.dart';

class ProductRepository {
  final Database _database = db;

  Future<List<Product>> getProducts() async {
    final productDtos = await _database.select(_database.productData).get();
    return productDtos
        .map((dto) => Product(
              name: dto.name,
              imageData: dto.imageData,
              isActive: dto.isActive,
              qrData: dto.qrData,
            ))
        .toList();
  }

  Future<void> addProduct(Product product) async {
    await _database.into(_database.productData).insert(
          ProductDataCompanion(
            name: Value(product.name),
            imageData: Value(product.imageData),
            isActive: Value(product.isActive),
            qrData: Value(product.qrData),
          ),
        );
  }

  Future<void> deleteProduct(int id) async {
    await (_database.delete(_database.productData)
          ..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  Future<void> updateProduct(int id, Product product) async {
    await (_database.update(_database.productData)
          ..where((tbl) => tbl.id.equals(id)))
        .write(
          ProductDataCompanion(
            name: Value(product.name),
            imageData: Value(product.imageData),
            isActive: Value(product.isActive),
            qrData: Value(product.qrData),
          ),
        );
  }
}
