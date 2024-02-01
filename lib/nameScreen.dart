import 'package:flutter/material.dart';
import 'package:flutter_application_1/XOGame.dart';

class NameScreen extends StatelessWidget {
  static const nameRoute = 'NameScreen';
  //TextEditingController textEditingController1 = TextEditingController();
  static String Player1 = '';
  //TextEditingController textEditingController2 = TextEditingController();
  static String Player2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 71, 143, 150),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              onChanged: (txt) {
                Player1 = txt;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0xff2B6B1F)),
                hintText: "Player 1 name",
                fillColor: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              onChanged: (txt) {
                Player2 = txt;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0xffDC6859)),
                hintText: "Player 2 name",
                fillColor: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: ElevatedButton(
                onPressed: () {
                  //Player1 = textEditingController1.text;
                  //Player2 = textEditingController2.text;
                  Navigator.pushNamed(context, XOGame.GameRouteName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 71, 143, 150),
                ),
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Text(
                      'ｐｌａｙ',
                      style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ))),
          )
        ],
      ),
    );
  }
}



