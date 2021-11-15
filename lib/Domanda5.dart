import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SchermataQuizFinito.dart';
import 'package:kotlin_learning_flutter_app/HomePage.dart';

import 'modelliQuiz/QuizStringhe.dart' as stringhe;
import 'modelliQuiz/QuizVariabili.dart' as variabili;
import 'modelliQuiz/QuizArrayECollection.dart' as arrayANDcollections;
import 'modelliQuiz/QuizClassi.dart' as classi;
import 'modelliQuiz/QuizFunzioni.dart' as funzioni;
import 'modelliQuiz/QuizCondizioniECicli.dart' as condizioniCicli;
import 'modelliQuiz/QuizLambdaFunctions.dart' as lambdaFunctions;
import 'modelliQuiz/QuizNullSafety.dart' as nullSafety;
import 'modelliQuiz/QuizEreditarieta\'.dart' as ereditarieta;

import 'package:shared_preferences/shared_preferences.dart';


//Q5 sta per 'question5' cioe domanda n.5

class Q5 extends StatefulWidget {

  int scoreparziale;
  String argomentoquiz;

  Q5({this.scoreparziale, this.argomentoquiz});

  @override
  _Q5State createState() => _Q5State();
}


class _Q5State extends State<Q5> {

  List<Map<String, Object>> argomento;

  //in base ad argomentoquiz prendo la quinta domanda e le risposte daI fileS delle domande
  //e la copio in una variabile di appoggio 'argomento'

  List<Map<String, Object>> fetchdata() {
    List<Map<String, Object>> a;

    if(widget.argomentoquiz == 'variabili'){
      a = variabili.domanda5;
    }
    if(widget.argomentoquiz == 'stringhe'){
      a = stringhe.domanda5;
    }
    if(widget.argomentoquiz == 'array_e_collection'){
      a = arrayANDcollections.domanda5;
    }
    if(widget.argomentoquiz == 'classi'){
      a = classi.domanda5;
    }
    if(widget.argomentoquiz == 'condizioni_e_cicli'){
      a = condizioniCicli.domanda5;
    }
    if(widget.argomentoquiz == 'ereditarieta'){
      a = ereditarieta.domanda5;
    }
    if(widget.argomentoquiz == 'lambda_functions'){
      a = lambdaFunctions.domanda5;
    }
    if(widget.argomentoquiz == 'nullsafety'){
      a = nullSafety.domanda5;
    }
    if(widget.argomentoquiz == 'funzioni'){
      a = funzioni.domanda5;
    }
    return a;
  }

  //controller texfield per ottenere l'input da tastiera per la domanda5
  final _controller = TextEditingController();
  String rispostaDatastiera;


  int countervariabili;
  int counterStringhe;
  int counterCondizioniECicli;
  int counterfunzioni;
  int counterNullSafety;
  int counterArrayCollections;
  int counterClassi;
  int counterEreditarieta;
  int counterLambdaFunctions;

  void loadCounters() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      countervariabili = (prefs.getInt('scorevariabili') ?? 0);
      counterStringhe = (prefs.getInt('scoreStringhe') ?? 0);
      counterCondizioniECicli = (prefs.getInt('scoreCondizioniECicli') ?? 0);
      counterfunzioni = (prefs.getInt('scorefunzioni') ?? 0);
      counterNullSafety = (prefs.getInt('scoreNullSafety') ?? 0);
      counterArrayCollections = (prefs.getInt('scoreArrayCollections') ?? 0);
      counterClassi = (prefs.getInt('scoreClassi') ?? 0);
      counterEreditarieta = (prefs.getInt('scoreEreditarieta') ?? 0);
    });
  }

  //prende la key dello score salvato nella cache e riassiagna il valore
  void save(String score, int scoreparziale) async {
    final prefs = await SharedPreferences.getInstance();
      prefs.setInt(score, scoreparziale);
  }

  @override
  void initState() {
    argomento = fetchdata();
    loadCounters();
    super.initState();
  }

  //prendo l'argomento del quiz completato e lo score
  //riassegno lo score salvato se lo score appena ottenuto e maggiore di quello salvato

  void SaveData(String argomentoquiz, int scoreparziale) {

    if (widget.argomentoquiz == 'variabili' && scoreparziale > countervariabili) {
        save('scorevariabili', scoreparziale);}
    if (widget.argomentoquiz == 'stringhe' && scoreparziale > counterStringhe) {
        save('scoreStringhe', scoreparziale);}
    if (widget.argomentoquiz == 'array_e_collection' && scoreparziale > counterArrayCollections) {
        save('scoreArrayCollections', scoreparziale);}
    if (widget.argomentoquiz == 'classi' && scoreparziale > counterClassi) {
        save('scoreClassi', scoreparziale);}
    if (widget.argomentoquiz == 'condizioni_e_cicli' && scoreparziale > counterCondizioniECicli) {
        save('scoreCondizioniECicli', scoreparziale);}
    if (widget.argomentoquiz == 'ereditarieta' && scoreparziale > counterEreditarieta) {
        save('scoreEreditarieta', scoreparziale);}
    if (widget.argomentoquiz == 'lambda_functions' && scoreparziale > counterLambdaFunctions) {
        save('scoreLambdaFucntions', scoreparziale);}
    if (widget.argomentoquiz == 'nullsafety' && scoreparziale > counterNullSafety) {
        save('scoreNullSafety', scoreparziale);}
    if (widget.argomentoquiz == 'funzioni' && scoreparziale > counterfunzioni) {
        save('scorefunzioni', scoreparziale);}
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
                width: 300,
                height: 270,
                margin: EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  argomento[0]['domanda5'],
                  textAlign: TextAlign.left,
                ))),//testo domanda n.5
            SizedBox(height: 80),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 230,
                margin: EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: _controller,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Inseresci la tua risposta',
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              height: 60,
              width: 230,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                ),
                child: Text("CONFERMA", textAlign: TextAlign.center),
                onPressed: () {

                  setState(() {
                    rispostaDatastiera = _controller.text;
                  });

                  if(rispostaDatastiera == argomento[0]['risposta5'] || rispostaDatastiera == argomento[0]['risposta5bis']){
                    widget.scoreparziale++;
                  }

                  String arg = widget.argomentoquiz;
                  int scoretotale = widget.scoreparziale;
                  SaveData(arg, scoretotale);

                   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SchermataQuizFinito(scoretotale: scoretotale)));},
              ),
            ),
            SizedBox(height: 50),
          ],
        ),),
      ),
    );
  }
}