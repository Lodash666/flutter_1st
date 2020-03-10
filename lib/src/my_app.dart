
import 'package:flutter/material.dart';
import 'package:helloworld/src/pages/login_page.dart';
//File นี้บอกว่า มี กี่หน้า และ  FIX COLOR THEME FONT
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
