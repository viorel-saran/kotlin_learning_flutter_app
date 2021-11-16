import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Obbiettivi extends StatefulWidget {
  @override
  _ObbiettiviState createState() => _ObbiettiviState();
}

class _ObbiettiviState extends State<Obbiettivi> {


int countervariabili;
int counterStringhe;
int counterCondizioniECicli;
int counterfunzioni;
int counterNullSafety;
int counterArrayCollections;
int counterClassi;
int counterEreditarieta;
int counterLambdaFunctions;

//carico i score migliori salvati

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
      counterLambdaFunctions = (prefs.getInt('scorescoreLambdaFucntions') ?? 0);
    });
  }



@override
void initState() {
  super.initState();
  loadCounters();
}

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
              height: 73,
              width: w,
              child: Text(
                'OBBIETTIVI',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
              ),
            ), //obbiettivi
            Container(
              height: 73,
              width: w,
              child: Column(
                children: <Widget>[
                  Container(
                      width: w,
                      padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                      child: Text(
                        'VARIABILI',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16))),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey,
                          value: countervariabili.toDouble()*0.2, //"value:" richiede un valore in percentuale
                        ),),
                      SizedBox(width:23),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('$countervariabili/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'STRINGHE',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterStringhe.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterStringhe/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'CONDIZIONI E CICLI',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterCondizioniECicli.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterCondizioniECicli/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'FUNZIONI',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterfunzioni.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterfunzioni/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'NULL-SAFETY',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterNullSafety.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterNullSafety/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'ARRAY E COLLECTION',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterArrayCollections.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterArrayCollections/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'CLASSI',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterClassi.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterClassi/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              "EREDITARIETA'",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterEreditarieta.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterEreditarieta/5'))])])),
            Container(
                height: 73,
                width: w,
                child: Column(
                    children: <Widget>[
                      Container(
                          width: w,
                          padding: EdgeInsets.only(left: 23, top: (73 - 16) / 2),
                          child: Text(
                              'LAMBDA FUNCTIONS',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16))),
                      Row(
                          children: [
                            Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 23, top: (((73-16)/2)-14)/2 ),
                                child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    value: counterLambdaFunctions.toDouble()*0.2)),
                            SizedBox(width:23),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('$counterLambdaFunctions/5'))])])),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
