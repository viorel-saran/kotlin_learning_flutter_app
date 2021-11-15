import 'package:flutter/material.dart';
import 'dart:async';
import 'HomePage.dart';


void main() => runApp(MyAppStart());

class MyAppStart extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: splash_screen(),
    );
  }
}


//prima schermata all'avvio dell'app
//appare il logo kotlin per 2 secondi prima di passare alla Homepage


class splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return StartState();
  }
}

class StartState extends State<splash_screen>{


  startTimer() async{
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  @override
  void initState(){
    super.initState();
    startTimer();
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => HomePage()
    ));
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset('assets/images/kotlinLogo.png'),
        ),
      ),);
  }
}


