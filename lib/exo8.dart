import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp8());
}

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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