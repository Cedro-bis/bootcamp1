import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo2.dart';
import 'package:bootcamp1/exo3.dart';
import 'package:bootcamp1/exo4.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo7.dart';
import 'package:flutter/material.dart';

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Responsive',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ResponsiveLayoutScreen(),
    );
  }
}

class ResponsiveLayoutScreen extends StatelessWidget {
  const ResponsiveLayoutScreen({super.key});


  Widget _buildColoredBox(Color color, String text) {
    return Expanded(
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(8.0),
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isLandscape = orientation == Orientation.landscape;

    return Scaffold(
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
      appBar: AppBar(
        title: const Text('Eighth Answer'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isLandscape
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildColoredBox(Colors.blue, 'First box (Paysage)'),
            _buildColoredBox(Colors.red, 'Second box (Paysage)'),
            _buildColoredBox(Colors.purple, 'Third box (Paysage)'),
          ],
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildColoredBox(Colors.blue, 'First box (Portrait)'),
            _buildColoredBox(Colors.red, 'Second box (Portrait)'),
            _buildColoredBox(Colors.purple, 'Third box (Portrait)'),
          ],
        ),
      ),
    );
  }
}