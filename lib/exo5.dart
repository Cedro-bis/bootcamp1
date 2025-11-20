import 'package:flutter/material.dart';
import 'dart:math';
void main (){
  runApp(MyApp5());
}
class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citation random',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Citations(),
    );
  }
}
class Citations extends StatefulWidget {
  const Citations({super.key});

  @override
  State<Citations> createState() => _CitationsState();
}

class _CitationsState extends State<Citations> {
  final List<String> _migani = [
    "Akaduma kahabire halibwi, kaderha mpu habibwi",
    "Omulume ajirwa n'owabo",
    "Orhamanyiri omunyiampire ye omuheka ko izulu",
    "Iragi lyo likuhu aha bwenge",
    "Irenge ly'ecinganyi busha lifa",
    "Rugendabanga burhaba boba",
    "Orhabiyishi ye Obinia kwo",
    "Omwana murhengu arhalya okuntada y'omugikulu",
    "Ecinyabuguma cociyir'engwi",
    "oyimangirhwe na wangui, adoma agashongwire",
  ];
  String _citation = "Click for citation.";
  final Random _random = Random();
  @override
  void _NewMugani (){
    setState(() {
      int randomIndex = _random.nextInt(_migani.length);
      _citation = _migani[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Navigator.pushNamed(context, '/exo1');
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note_sharp),
              title: Text('Music'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo1O');
              },
            ),ListTile(
              leading: Icon(Icons.pages),
              title: Text('Pages'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo11');
              },
            ),ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text('Simple profile'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo2');
              },
            ),ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile advance'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo3');
              },
            ),ListTile(
              leading: Icon(Icons.add),
              title: Text('Counter'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo4');
              },
            ),ListTile(
              leading: Icon(Icons.book),
              title: Text('Proverbs'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo5');
              },
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text('Contacts'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo6');
              },
            ),ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Meteo'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo7');
              },
            ),ListTile(
              leading: Icon(Icons.cabin),
              title: Text('Cases'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo8');
              },
            ),
          ],

        ),
      ),
      appBar: AppBar(
        shadowColor: Colors.green,
        backgroundColor: Colors.blue.shade200,
        title: Center(child: const Text('Fifth Answer')),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.download),color: Colors.black,)
        ],
      ),
      body: Center(
        child: Center(
          child: Padding(padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  _citation,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(onPressed: _NewMugani,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blueGrey,
                  ),
                  child: const Text('New citation', style: TextStyle(fontSize: 18),)),
            ],
          ),
          ),
        ),
      ),
    );
  }
}