import 'dart:typed_data';

class Product {
  int? id;
  String name;
  Uint8List? imageData;
  bool isActive;
  String qrData;

  Product({
    this.id,
    required this.name,
    this.imageData,
    this.isActive = false,
    required this.qrData,
  });
}