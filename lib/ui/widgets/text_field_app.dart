import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key, this.controller, this.hintText, this.isObscure = false});

  final TextEditingController? controller;
  final String? hintText;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller, 
    obscureText: isObscure,
    decoration: InputDecoration(
    hintText: hintText,
    filled: true,
    
    fillColor: Colors.lightBlue,
    border: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.lightBlueAccent))),
    validator: (value){
            if(value!.isEmpty) return 'Поле не может быть пустым';
            if(value.length<3) return 'Поле не может содержать меньше 3 символов';
          },
  );
  }
}