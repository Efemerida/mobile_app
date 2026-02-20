import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_2/ui/widgets/button_app.dart';
import 'package:flutter_2/ui/screens/my_first_page.dart';
import 'package:flutter_2/ui/screens/register_screen.dart';
import 'package:flutter_2/ui/text_field_app.dart';
import 'package:flutter_2/domain/models/user.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}



class _AuthScreenState extends State<AuthScreen> {


  var controllerLogin = TextEditingController();
  var controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    controllerLogin.addListener(() => setState(() {
    }));

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16),child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Авторизация', style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 8,),
          TextFieldApp(controller: controllerLogin, hintText: 'Логин'),
          SizedBox(height: 8,),
          TextFieldApp(controller: controllerPassword, hintText: 'Пароль', isObscure: true,),
          SizedBox(height: 8,),
          ButtonApp(text: 'Войти', onPressed: onLogin,),
          SizedBox(height:16,),
          GestureDetector(
            onTap: onRegister,
            child: Text('Зарегестрироваться',style: TextStyle(fontSize: 16, color: Colors.white),),)
        ],
      ),
    ));
  }

  void onLogin(){
    for(var user in users){
      if(user.login == controllerLogin.text && user.password == controllerPassword.text){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyFirstPage(tittle: 'Главная',)));
            return;
      }
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Неверный логин или пароль')));
  }

  void onRegister(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
  }
}