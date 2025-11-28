import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo3.dart';
import 'package:bootcamp1/exo4.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo7.dart';
import 'package:bootcamp1/exo8.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Second Answer',
      theme: ThemeData(primarySwatch: Colors.red),
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
        appBar: AppBar(
             backgroundColor: Colors.blue.shade200,
              title: Center(child: Text('Second Answer', style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,),),),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              ],
        ),
        body: Center(child: Container(
          width: 300,
          height: 400,
          padding: EdgeInsets.only(top: 30.0),
          color: Colors.blue,
          child: Center(child: Column(
              spacing: 4,
            children: [
              CircleAvatar( radius: 60, backgroundImage: AssetImage('lib/image/cedro.jpg'),),
              Text('Cédro Bisimwa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
              Text('Etudiant à l\'UCB', style: TextStyle(fontSize: 20,),),
              Text('Membre de la GDG',style: TextStyle(fontSize: 20,),),
              Text('Apprenant en Flutter',style: TextStyle(fontSize: 20,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.phone_android),color: Colors.black,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mail),color: Colors.black,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.facebook), color: Colors.black,),

                ],
              )



            ],
          ),
          ),
          ),
        ),),
      );

  }
}
