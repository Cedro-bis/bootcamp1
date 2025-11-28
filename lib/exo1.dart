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

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My first answer',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue.shade100,
          child: ListView(
            children: [
              DrawerHeader(child: Icon(Icons.account_circle,size: 100,)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstApp()));
                },
              ),
              ListTile(
                leading: Icon(Icons.music_note_sharp),
                title: Text('Music'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp10()));
                },
              ),ListTile(
                leading: Icon(Icons.pages),
                title: Text('Pages'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Final()));
                },
              ),ListTile(
                leading: Icon(Icons.person_outline_outlined),
                title: Text('Simple profile'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp2()));
                },
              ),ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile advance'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp3()));
                },
              ),ListTile(
                leading: Icon(Icons.add),
                title: Text('Counter'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp4()));
                },
              ),ListTile(
                leading: Icon(Icons.book),
                title: Text('Proverbs'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp5()));
                },
              ),ListTile(
                leading: Icon(Icons.person),
                title: Text('Contacts'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp6()));
                },
              ),ListTile(
                leading: Icon(Icons.cloud),
                title: Text('Meteo'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp7()));
                },
              ),ListTile(
                leading: Icon(Icons.cabin),
                title: Text('Cases'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp8()));
                },
              ),
            ],
            
          ),
        ),
        backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: Center(child: Text('First Answer', style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,),),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp3()));
            }, icon: Icon(Icons.account_circle, color: Colors.black,)),
          ],
        ),
        body: Center(child: Card(
          color: Colors.white30,
          shadowColor: Colors.black,
          borderOnForeground: true,
          child: Container(
            color: Colors.white38,
            width: 300,
            height: 200,
            child: Center(child: Text('Cedro Bisimwa', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                color: Colors.black),),),

          ),
        ),),
        //floatingActionButton: Icon(Icons.message),
      ),
    );
  }
}