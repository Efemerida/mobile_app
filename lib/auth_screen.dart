import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_2/my_first_page.dart';
import 'package:flutter_2/register_screen.dart';
import 'package:flutter_2/user.dart';

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
      setState(() {});
    }));

    return Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16),child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Авторизация', style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 8,),
          TextFormField(controller: controllerLogin,),
          SizedBox(height: 8,),
          TextFormField(obscureText: true, controller: controllerPassword,),
          SizedBox(height: 8,),
          ElevatedButton(onPressed: onLogin, child: Text('Войти'),),
          SizedBox(height:16,),
          GestureDetector(
            onTap: onRegister,
            child: Text('зарегестрироваться'),)
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