import 'package:flutter/material.dart';
import 'package:shop_online/Login/login_Form.dart'; 
import 'package:shop_online/home_page.dart';

const d_pink = Colors.pinkAccent;
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROJET TUTORE, KENGNE RODRIGUE MARTIAL, ALAN TAYOU, NGUEDONG JODELLE, ESTHER ENO EFFIONG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginForm(), 
    );
  }
}


