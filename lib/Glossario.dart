import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'package:flutter/services.dart' show rootBundle;


class Glossario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
        body: ListView(
          children: <Widget>[
            Container(

             child:Container(
                width: w,
                height: h/3.4,
                child: Center(
                  child: Text(
                    'GLOSSARIO',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
        ),

              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("VARIABILI", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "VARIABILI", teoria: 'variabili')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("STRINGHE", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "STRINGHE", teoria: 'stringhe')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("CONDIZIONI E CICLI", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "CONDIZIONI E CICLI", teoria: 'condizioni_e_cicli')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("FUNZIONI", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "FUNZIONI", teoria: 'funzioni')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("NULL-SAFETY", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "NULL-SAFETY", teoria: 'nullsafety')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("ARRAY E COLLECTION", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "ARRAY E COLLECTION", teoria: 'array_e_collection')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("CLASSI", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "CLASSI", teoria: 'classi')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("EREDITARIETA'", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "EREDITARIETA'", teoria: 'ereditarieta')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: w,
                child: TextButton(
                  child: Text("LAMBDA FUNCTIONS", textAlign: TextAlign.center),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeoDaGlossario(
                              argomento: "LAMBDA FUNCTIONS", teoria: 'lambda_functions')),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}


class TeoDaGlossario extends StatefulWidget {
  String teoria;
  String argomento;

  TeoDaGlossario({Key key, @required this.argomento, @required this.teoria})
      : super(key: key);

  @override
  TeoDaGlossarioState createState() => TeoDaGlossarioState();
}

class TeoDaGlossarioState extends State<TeoDaGlossario> {
  String data = '';

  fetchFiledata() async {
    String risposta;
    risposta = await rootBundle
        .loadString('assets/TextFiles/' + '${widget.teoria}' + '.txt');

    setState(() {
      data = risposta;
    });
  }

  @override
  void initState() {
    fetchFiledata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Glossario"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Glossario()));
              }),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              height: 100,
              child: Text("${widget.argomento}",
                style: TextStyle(fontSize: 25, color: Colors.white),


              ),
            ),
            Container(
              height: (h-206),
              width: w,
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(data),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
