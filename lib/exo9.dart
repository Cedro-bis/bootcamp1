import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo2.dart';
import 'package:bootcamp1/exo3.dart';
import 'package:bootcamp1/exo4.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo7.dart';
import 'package:bootcamp1/exo8.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp9());
}
class MyApp9 extends StatelessWidget {
  const MyApp9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstApp(),
      routes: {
        '/exo1' : (context) => FirstApp(),
        '/exo2' : (context) => MyApp2(),
        '/exo3' : (context) => MyApp3(),
        '/exo4' : (context) => MyApp4(),
        '/exo5' : (context) => MyApp5(),
        '/exo6' : (context) => MyApp6(),
        '/exo7' : (context) => MyApp7(),
        '/exo8' : (context) => MyApp8(),
        '/exo10' : (context) => MyApp10(),
        '/exo11' : (context) => Final(),
      },
    );
  }
}


