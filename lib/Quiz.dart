import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kotlin_learning_flutter_app/HomePage.dart';
import 'Domande.dart';
import 'Domanda5.dart';


//importo tutti i file .dart che contengoto i quiz di tutti gli argomenti
import 'modelliQuiz/QuizStringhe.dart' as stringhe;
import 'modelliQuiz/QuizVariabili.dart' as variabili;
import 'modelliQuiz/QuizArrayECollection.dart' as arrayANDcollections;
import 'modelliQuiz/QuizClassi.dart' as classi;
import 'modelliQuiz/QuizFunzioni.dart' as funzioni;
import 'modelliQuiz/QuizCondizioniECicli.dart' as condizioniCicli;
import 'modelliQuiz/QuizLambdaFunctions.dart' as lambdaFunctions;
import 'modelliQuiz/QuizNullSafety.dart' as nullSafety;
import 'modelliQuiz/QuizEreditarieta\'.dart' as ereditarieta;

class Quiz extends StatefulWidget {
  String argomentoquiz;
  Quiz({this.argomentoquiz});

  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  int scoreTracker = 0;
  int indexDomanda = 0;
  int scoreparziale = 0;
  bool rispostaInserita = false;
  bool quizFinito = false;//indice di verifica se le prime 4 domande da iterare sono state eseguite



  void rispostaData(bool scoreTacker) {
    setState(() {
      //una risposta e stata selezionata
      rispostaInserita = true;
      //controllo se la risposta e giusta e aumento o no lo score
      if (scoreTacker) {
        scoreparziale++;
      }
    });
  }

  void prossimaDomanda() {
    setState(() {
      indexDomanda++;
      rispostaInserita = false;
    });

    //verifica se le prime 4 domande sono state eseguite
    if (indexDomanda >= 4) {
      quizFinito = true;
      indexDomanda = 3; //metodo brutale per risolvere un bug
    }
  }



  //in base ad argomentoquiz prendo la lista di domande e risposte dal file delle domande
  //e le copio in una variabile di appoggio 'argomento'

  List<Map<String, Object>> fetchdata() {
    List<Map<String, Object>> a;

    if (widget.argomentoquiz == 'variabili') {
      a = variabili.domanda;
    }
    if (widget.argomentoquiz == 'stringhe') {
      a = stringhe.domanda;
    }
    if (widget.argomentoquiz == 'array_e_collection') {
      a = arrayANDcollections.domanda;
    }
    if (widget.argomentoquiz == 'classi') {
      a = classi.domanda;
    }
    if (widget.argomentoquiz == 'condizioni_e_cicli') {
      a = condizioniCicli.domanda;
    }
    if (widget.argomentoquiz == 'ereditarieta') {
      a = ereditarieta.domanda;
    }
    if (widget.argomentoquiz == 'lambda_functions') {
      a = lambdaFunctions.domanda;
    }
    if (widget.argomentoquiz == 'nullsafety') {
      a = nullSafety.domanda;
    }
    if (widget.argomentoquiz == 'funzioni') {
      a = funzioni.domanda;
    }

    setState(() {
      a.shuffle();
    });

    return a;

  }


  List<Map<String, Object>> argomento;

  @override
  void initState() {
    argomento = fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 70),
              Container(
                  width: 270,
                  height: 230,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                        argomento[indexDomanda]['domanda'],//prendo il testo della domanda dalla lista di map
                    textAlign: TextAlign.center,
                  ))),
              SizedBox(height: 30),
              ...(argomento[indexDomanda]['risposte']//itero le risposte dalla lista di map
                      as List<Map<String, Object>>)
                  .map(
                (risposta) => Risposta(
                  risposta: risposta['risposte'],
                  answerTap: () {
                    if (rispostaInserita) {return;} //do la possibilita di scegliere una risposta una sola volta

                    rispostaData(risposta['score']);//rilevo il tap della risposta e prendo lo score
                                                    //se score=true risposta giusta
                                                    //se score=false risposta sbagliata

                    prossimaDomanda();//passo alla prossima domanda

                    if (quizFinito) { //eseguite le prime 4 domande si va alla quinta domanda
                                      //passandogli lo scoreparziale e l'argomento della quinta domanda da prendere
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Q5(
                                scoreparziale: scoreparziale,
                                argomentoquiz: widget.argomentoquiz)));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
