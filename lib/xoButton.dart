import 'package:flutter/material.dart';

class xoButton extends StatelessWidget {
  String txt;
  int index,color;
  Function onButtonClick;
  xoButton({required this.txt,required this.index,required this.color, required this.onButtonClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Color(color),shape: CircleBorder(eccentricity: 0.1)),
          onPressed: () {
            onButtonClick(index);
          },
          child: Text(
            txt,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
