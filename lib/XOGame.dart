import 'package:flutter/material.dart';
import 'package:flutter_application_1/nameScreen.dart';
import 'package:flutter_application_1/xoButton.dart';

class XOGame extends StatefulWidget {
  static const String GameRouteName = 'XO';

  @override
  State<XOGame> createState() => _XOGameState();
}

class _XOGameState extends State<XOGame> {
  int player1Scor = 0;
  int player2Scor = 0;
  List<int> color = [
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
    0xff78BFC5,
  ];
  List<String> xoCases = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 71, 143, 150),
          title: Text('XO Game'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff2B6B1F), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '${NameScreen.Player1}(✘) \n \t\t\t\t\t$player1Scor',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2B6B1F)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffDC6859), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '${NameScreen.Player2}(O) \n \t\t\t\t\t$player2Scor',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffDC6859)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    xoButton(
                        txt: xoCases[0],
                        index: 0,
                        color: color[0],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[1],
                        index: 1,
                        color: color[1],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[2],
                        index: 2,
                        color: color[2],
                        onButtonClick: onClickedButton),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    xoButton(
                        txt: xoCases[3],
                        index: 3,
                        color: color[3],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[4],
                        index: 4,
                        color: color[4],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[5],
                        index: 5,
                        color: color[5],
                        onButtonClick: onClickedButton),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    xoButton(
                        txt: xoCases[6],
                        index: 6,
                        color: color[6],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[7],
                        index: 7,
                        color: color[7],
                        onButtonClick: onClickedButton),
                    xoButton(
                        txt: xoCases[8],
                        index: 8,
                        color: color[8],
                        onButtonClick: onClickedButton),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  int counter = 0;

  void onClickedButton(int indx) {
    if (xoCases[indx].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      color[indx] = 0xff2B6B1F;
      xoCases[indx] = '✘';
    } else {
      color[indx] = 0xffDC6859;

      xoCases[indx] = 'O';
    }
    counter++;

    if (ChickeWinner('✘')) {
      showAlertDialog(context, NameScreen.Player1);

      player1Scor += 5;
      RestartGame();
    } else if (ChickeWinner('O')) {
      showAlertDialog(context, NameScreen.Player2);
      player2Scor += 5;
      RestartGame();
    } else if (counter == 9) RestartGame();

    setState(() {});
  }

  bool ChickeWinner(String symbol) {
    //rows
    for (int i = 0; i < 9; i += 3) {
      if (xoCases[i] == symbol &&
          xoCases[i + 1] == symbol &&
          xoCases[i + 2] == symbol) return true;
    }

    //Columns
    for (int i = 0; i < 3; i++) {
      if (xoCases[i] == symbol &&
          xoCases[i + 3] == symbol &&
          xoCases[i + 6] == symbol) return true;
    }

    //diagonal
    if (xoCases[0] == symbol && xoCases[4] == symbol && xoCases[8] == symbol)
      return true;

    if (xoCases[2] == symbol && xoCases[4] == symbol && xoCases[6] == symbol)
      return true;

    return false;
  }

  void RestartGame() {
    xoCases = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    counter = 0;
    color = [
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
      0xff78BFC5,
    ];
  }

  showAlertDialog(BuildContext context, String PlayerName) {
    Widget okButton = TextButton(
      child: Text("Continue"),
      onPressed: () {
          Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("✨ Congratulations $PlayerName"),
     content:Image.asset('assets/images/img.png'),
              actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
