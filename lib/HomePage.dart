import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Glossario.dart';
import 'SchermataArgomentoTeoriaConBottoneQuizz.dart';
import 'Obbiettivi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool QuizVariabiliNonCompletato = true;
  bool QuizStringheNonCompletato = true;
  bool QuizCondizioniECicliNonCompletato = true;
  bool QuizFunzioniNonCompletato = true;
  bool QuizNullSafetyNonCompletato = true;
  bool QuizArrayECollectionsNonCompletato = true;
  bool QuizClassiNonCompletato = true;
  bool QuizEreditarietaNonCompletato = true;

  int countervariabili;
  int counterStringhe;
  int counterCondizioniECicli;
  int counterfunzioni;
  int counterNullSafety;
  int counterArrayCollections;
  int counterClassi;
  int counterEreditarieta;

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

    //imposto lo stato dei bottoni(bloccati/non bloccati), in base
    //allo score migliore ottenuto nel argomento subito prima

    setState(() {
      if (countervariabili >= 3) {
        QuizVariabiliNonCompletato = false;
      }
      if (counterStringhe >= 3) {
        QuizStringheNonCompletato = false;
      }
      if (counterCondizioniECicli >= 3) {
        QuizCondizioniECicliNonCompletato = false;
      }
      if (counterfunzioni >= 3) {
        QuizFunzioniNonCompletato = false;
      }
      if (counterNullSafety >= 3) {
        QuizNullSafetyNonCompletato = false;
      }
      if (counterArrayCollections >= 3) {
        QuizArrayECollectionsNonCompletato = false;
      }
      if (counterClassi >= 3) {
        QuizClassiNonCompletato = false;
      }
      if (counterEreditarieta >= 3) {
        QuizEreditarietaNonCompletato = false;
      }
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opzioni"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Image.asset('assets/images/drawerImage.jpg'),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Glossario'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Glossario()),
                  );
                },
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Obbiettivi'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Obbiettivi()),
                  );
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 230,
              width: w,
              child:
                  Image.asset('assets/images/kotlinLogo.png', fit: BoxFit.fill),
              //padding: EdgeInsets.only(bottom: 30, top: 30),
            ), //immagine kotlin in alto
            Container(
              child: Container(
                width: w,
                height: 63,
                child: Center(
                  child: Text(
                    'LIVELLO: BASE',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ), //testo livello base
            Container(
              height: 190,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("VARIABILI"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArgTeoBtn(
                                    argomento: "VARIABILI",
                                    teoria: 'variabili')));
                      },
                    ),
                  ), //bottone varibili
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("STRINGHE"),
                      // ternary function because it has three portions: the condition,
                      // the value if the condition is true, and the value if the condition is false.

                      //   condizione ? if true : if false

                      onPressed: QuizVariabiliNonCompletato
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArgTeoBtn(
                                          argomento: "STRINGHE",
                                          teoria: 'stringhe')));
                            },
                    ),
                  ), //bottone stringhe
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 160,
              child: Container(
                height: 160,
                width: 150,
                padding: EdgeInsets.only(top: 10, bottom: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                  ),
                  child:
                      Text("CONDIZIONI E CICLI", textAlign: TextAlign.center),
                  onPressed: QuizStringheNonCompletato
                      ? null
                      : () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArgTeoBtn(
                                      argomento: "CONDIZIONI E CICLI",
                                      teoria: 'condizioni_e_cicli')));
                        },
                ),
              ),
            ), //bottone condizione e cicli
            Container(
              child: Container(
                width: w,
                height: 63,
                child: Center(
                  child: Text(
                    'LIVELLO: INTERMEDIO',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ), //testo livello intermedio
            Container(
              height: 190,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("FUNZIONI"),
                      onPressed: QuizCondizioniECicliNonCompletato
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArgTeoBtn(
                                          argomento: "FUNZIONI",
                                          teoria: 'funzioni')));
                            },
                    ),
                  ), //bottone funzioni
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("NULL-SAFETY"),
                      onPressed: QuizFunzioniNonCompletato
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArgTeoBtn(
                                          argomento: "NULL-SAFETY",
                                          teoria: 'nullsafety')));
                            },
                    ),
                  ), //bottone null-safety
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 160,
              child: Container(
                height: 160,
                width: 150,
                padding: EdgeInsets.only(top: 10, bottom: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                  ),
                  child:
                      Text("ARRAY E COLLECTION", textAlign: TextAlign.center),
                  onPressed: QuizNullSafetyNonCompletato
                      ? null
                      : () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArgTeoBtn(
                                      argomento: "ARRAY E COLLECTION",
                                      teoria: 'array_e_collection')));
                        },
                ),
              ), //bottone array and collections
            ),
            Container(
              child: Container(
                width: w,
                height: 63,
                child: Center(
                  child: Text(
                    'LIVELLO: AVANZATO',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ), //testo livello avanzato
            Container(
              height: 190,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("CLASSI"),
                      onPressed: QuizArrayECollectionsNonCompletato
                          ? null
                          : () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArgTeoBtn(
                                          argomento: "CLASSI",
                                          teoria: 'classi')));
                            },
                    ),
                  ), //bottone classi
                  Container(
                    height: 130,
                    width: 180,
                    padding: EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                      ),
                      child: Text("EREDITARIETA'"),
                      onPressed: QuizClassiNonCompletato
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArgTeoBtn(
                                          argomento: "EREDITARIETA'",
                                          teoria: 'ereditarieta')));
                            },
                    ),
                  ), //bottone ereditarieta'
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 160,
              child: Container(
                height: 160,
                width: 150,
                padding: EdgeInsets.only(top: 10, bottom: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                  ),
                  child: Text("LAMBDA FUNCTIONS", textAlign: TextAlign.center),
                  onPressed: QuizEreditarietaNonCompletato
                      ? null
                      : () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArgTeoBtn(
                                      argomento: 'LAMBDA FUNCTIONS',
                                      teoria: 'lambda_functions')));
                        },
                ),
              ),
            ), //bottone lamda functions
          ],
        ),
      ),
    );
  }
}
