import 'package:flutter/material.dart';

import './score.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    if (i == 4) {
      return Container(
        alignment: Alignment.center,
        child: Text('Response Recorded',
            style: TextStyle(
                color: Colors.white, fontSize: 60, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          //flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                que[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              textColor: Colors.white,
              color: Colors.green,
              padding: EdgeInsets.all(10),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  int j = 1;
                  check(i, j);
                  i++;
                });
              },
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              textColor: Colors.white,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  int j = 0;
                  check(i, j);
                  i++;
                });
              },
            ),
          ),
        ),
        Row(
          children: score,
        ),
      ],
    );
  }
}
