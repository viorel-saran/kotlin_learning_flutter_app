import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'Quiz.dart';

class ArgTeoBtn extends StatefulWidget {

  String teoria;
  String argomento;

  ArgTeoBtn({Key key, @required this.argomento, @required this.teoria}) : super(key: key);

  @override
  ArgTeoBtnState createState() => ArgTeoBtnState();
}


class ArgTeoBtnState extends State<ArgTeoBtn> {

  String data;

  //prendo la teoria sotto forma di stringa dai file .txt in base al bottone premuto nella homepage
  fetchFiledata() async {
    String dataFromtxt;
    dataFromtxt = await rootBundle.loadString('assets/TextFiles/'+'${widget.teoria}'+'.txt');
    setState(() {
      data = dataFromtxt;
    });
  }

  @override
  void initState() {
    fetchFiledata();
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
        body: ListView(children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 80,
            padding: EdgeInsets.only(top: 50,left: 18 ),
            child: Text("${widget.argomento}", style: TextStyle(fontSize: 25),),
          ),// argomento
          Container(

            height: 430,
            width: 400,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),),
            child:Expanded(
                       child:  SingleChildScrollView(
                               scrollDirection: Axis.vertical,
                               child:  Text(data),
          ),),),//teoria
          Container(
            alignment: Alignment.center,
            height: 140,
            child: Container(
              height: 140,
              width: 200,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                ),
                child: Text("QUIZ", textAlign: TextAlign.center),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Quiz(argomentoquiz: widget.teoria)));
                },
              ),
            ),
          ),//bottone quiz
        ]),
      ),
    );
  }
}
