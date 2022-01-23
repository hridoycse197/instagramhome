import 'package:flutter/material.dart';

import 'Instahome.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black),),),
    
    home:  Instahomes(),
    
    );
  }
}
