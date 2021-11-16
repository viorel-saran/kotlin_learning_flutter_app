import 'package:flutter/material.dart';

class Risposta extends StatelessWidget {
  final String risposta;
  Function answerTap;

  Risposta({this.risposta, this.answerTap});

//bottone risposta, iterato 4 volte nelle domande a risposta da bottone in Quiz.dart

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: answerTap,
        child: Column(children: [
          Container(
              width: 250,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(risposta,
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      )))),
          SizedBox(height: 20),
        ]));
  }
}
