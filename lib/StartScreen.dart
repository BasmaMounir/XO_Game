import 'package:flutter/material.dart';
import 'package:flutter_application_1/XOGame.dart';
import 'package:flutter_application_1/nameScreen.dart';

class StartScreen extends StatelessWidget {
  static const String StartRouteName = 'StartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff78BFC5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text('\t\t\t 🆇🅾 🅶🅰🅼🅴',
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontFamily: 'Forte',
                    ))),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, NameScreen.nameRoute);
              },
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 71, 143, 150),
                  radius: 80,
                  child: Icon(
                    Icons.play_arrow,
                    size: 100,
                    color: Colors.white,
                  )),
            )
          ],
        ));
  }
}
