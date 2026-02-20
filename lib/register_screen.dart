import 'package:flutter/material.dart';
import 'package:flutter_2/user.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

var loginController = TextEditingController();
var nameController = TextEditingController();
var passwordController = TextEditingController();
var confirmPasswordController = TextEditingController();

var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Регистрация')),
      body: Form(
        key: formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
          validator: (value){
            return value!.isEmpty?'Поле не может быть пустым':null;
          },
          controller:  nameController, decoration: InputDecoration(
          hintText: 'Имя'
        ),),
        TextField(controller: loginController, decoration: InputDecoration(
          hintText: 'Логин'
        ),),
        TextField(controller:  passwordController, obscureText: true, decoration: InputDecoration(
          hintText: 'Пароль'
        ),),
        TextField(controller:  confirmPasswordController, obscureText: true, decoration: InputDecoration(
          hintText: 'Подтверждение'
        ),),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: register, child: Text('Зарегестрироваться', style: TextStyle(color: Colors.green),))
      ],),
      ));
  }


void register(){
  formKey.currentState!.validate();
  if(nameController.text.isEmpty || loginController.text.isEmpty || passwordController.text.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Поля неверно введены')));
  }
  else if(passwordController.text != confirmPasswordController.text){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Пароли не совпадают')));
  }
  else{
    var user = User(name: nameController.text, login: loginController.text, password: passwordController.text);
    users.add(user);
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Успешная регистрация')));

  }
}

}