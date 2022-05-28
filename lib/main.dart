import 'package:app_try/Homepage.dart';
import 'package:app_try/login.dart';
import 'package:app_try/mainpage.dart';
import 'package:app_try/register.dart';
import 'package:app_try/time.dart';
import 'package:app_try/todo_card.dart';
import 'package:flutter/material.dart';
import 'package:app_try/d.dart';
import 'Todo.dart';
void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes:{
      'login':(context)=>MyLogin(),
      'register':(context)=>MyRegister(),
      'mainpage':(Context)=>MyPage(),
      'Homepage':(Context)=>Homepage(),
      'time':(Context)=>Time(),
      'Todo.dart':(Context)=>MyApp(),
      'todo_card':(Context)=>Todocard(),

    },

  ));
}