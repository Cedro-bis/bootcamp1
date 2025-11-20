import 'package:flutter/material.dart';

void main(){
  runApp(FirstApp());
}
class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: Center(child: Text('First Answer', style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,),),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle, color: Colors.black,)),
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