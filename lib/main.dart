import 'package:bootcamp1/exo1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp9());
}
class MyApp9 extends StatelessWidget {
  const MyApp9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstApp(),
    );
  }
}
