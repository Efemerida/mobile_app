import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/providers/product_notifier.dart';
import 'package:flutter_2/ui/screens/products_screen.dart';
import 'package:flutter_2/ui/widgets/button_app.dart';
import 'package:flutter_2/ui/widgets/text_field_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AddProductScreen extends ConsumerStatefulWidget {
  const AddProductScreen({super.key});

  @override
  ConsumerState<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends ConsumerState<AddProductScreen> {
  var nameController = TextEditingController();
  final _imagePicker = ImagePicker();
  File? _fileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Новый котик')),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _pickImage(ImageSource.camera),
                child:  ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: _fileImage!=null?Image.file(_fileImage!):Image.asset('assets/img/image.png'), 
              )),

              SizedBox(height: 16),

              TextFieldApp(controller: nameController, hintText: "Имя котика"),
              SizedBox(height: 16),
              ButtonApp.light(
                text: 'Добавить',
                onPressed: () {
                  var product = Product(
                    name: nameController.text,
                    imageData: _fileImage != null ? _fileImage!.readAsBytesSync() : null,
                     qrData: '',
                  );
                  ref.read(productProvider.notifier).addProduct(product);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pickImage(ImageSource source) async {
    var file = await _imagePicker.pickImage(source: source);
    if (file != null) {
      setState(() {
        _fileImage = File(file.path);
      });
    }
  }
}
