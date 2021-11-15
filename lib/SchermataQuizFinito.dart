import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SchermataQuizFinito extends StatelessWidget {

   int scoretotale;

   SchermataQuizFinito({ this.scoretotale});

   //al passaggio dalla domada5 alla schermatquizfinito controllo lo score e prendo l'immagine
   controllerImmaggine(scoretotale){
     if(scoretotale>=3){
       return Image.asset('assets/images/good_result.png');
     }else{
       return Image.asset("assets/images/bad_result.jpg");
     }
   }
   controllerTesto(scoretotale){
     if(scoretotale>=3){
       return Text('HAI SBLOCCATO L\'ARGOMENTO SUCCESSIVO');
     }else{
       return Text("MI DISPIACE, RIPROVA IL QUIZ");
     }
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
        body:ListView(
            children:[
              SizedBox(height: 60),
              Container(
                  width: 243,
                  height:243,
                  child: Center(
                      child:controllerImmaggine(scoretotale),
                  )),//immagine
              SizedBox(height: 48),
              Container(child: Center(child: Text("PUNTEGGIO", style: TextStyle(fontSize: 24),),),),
              Container(child: Center(child: Text('${scoretotale}'+'/5', style: TextStyle(fontSize: 24)),),),
              Container(child: Center(child: controllerTesto(scoretotale),),),
              SizedBox(height: 110),
              Center(
                child: Container(
                    width: 150,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child:InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));},
                   child:Center(
                      child: Text('HOMEPAGE',
                          style: TextStyle(
                            color: Colors.white,
                          ))),

                ),),
              ),//tasto homepage
            ]
        )
    );
  }
}
