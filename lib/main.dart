import 'package:flutter/material.dart';
import 'package:flutter_application_1/StartScreen.dart';
import 'package:flutter_application_1/XOGame.dart';
import 'package:flutter_application_1/nameScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XO Game',
      initialRoute: StartScreen.StartRouteName,
      routes:{
        StartScreen.StartRouteName:(context) => StartScreen(),
        NameScreen.nameRoute:(context) => NameScreen(),
        XOGame.GameRouteName:(context) => XOGame(),
      } ,
    );
  }
}

