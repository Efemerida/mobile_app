import 'package:flutter/material.dart';
import 'package:flutter_2/domain/models/product.dart';
import 'package:flutter_2/ui/screens/my_first_page.dart';
import 'package:flutter_2/ui/widgets/text_field_app.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/image.png'),
          TextFieldApp(controller: nameController),
          ElevatedButton(
            onPressed: () {
              produts.add(
                Product(
                  name: nameController.text,
                  pathImage: 'assets/img/image.png',
                  qrData: "${nameController.text}",
                ),
              );
              Navigator.pop(context);
            },
            child: Text('Добавить'),
          ),
        ],
      ),
    );
  }
}
