import 'package:flutter/material.dart';
import 'package:flutter_2/ui/widgets/button_app.dart';
import 'package:flutter_2/ui/text_field_app.dart';
import 'package:flutter_2/domain/models/user.dart';

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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('Регистрация'), backgroundColor: Colors.grey,),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        child:  Form(
        key: formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldApp(controller:  nameController, hintText: 'Имя'),
          SizedBox(height: 8,),
          TextFieldApp(controller: loginController, hintText: 'Логин'),
          SizedBox(height: 8,),
          TextFieldApp(controller: passwordController, hintText: 'Пароль' ,isObscure: true,),
          SizedBox(height: 8,),
          TextFieldApp(controller: confirmPasswordController,hintText: 'Подтверждение пароля', isObscure: true,),
      SizedBox(height: 8,),
        ButtonApp(onPressed: register, text: 'Зарегестрироваться',)
      ],),
      )));
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