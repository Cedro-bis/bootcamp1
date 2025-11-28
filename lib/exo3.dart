import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo2.dart';
import 'package:bootcamp1/exo4.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo7.dart';
import 'package:bootcamp1/exo8.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'exo3',
    theme: ThemeData(primarySwatch: Colors.red),
    home: Scaffold(
      backgroundColor: Colors.white60,
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
        backgroundColor: Colors.blue.shade900,
    title: Center(child: Text('Third Answer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
    color: Colors.white),),),
        //leading: Icon(Icons.menu, color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.local_grocery_store_outlined),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.perm_contact_cal),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,),

        ],
    ),
      body: Center(
        child:Card(

          shadowColor: Colors.black,
          color: Colors.white38,
          child: Container(
            width: 200,
            height: 340,
            padding: EdgeInsets.only(top: 30.0),
            child: Column(
              spacing: 6.0,
              children: [
                CircleAvatar(
                    radius: 50.0,
                  backgroundImage: AssetImage('lib/image/cedro.jpg'),
                ),
                Text('Cédro Bisimwa', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),
                Text('Student at Catholic university of Bukavu', style: TextStyle(fontSize: 10,color: Colors.black),),
                Text('Member of Flutter Team', style: TextStyle(fontSize: 10,color: Colors.black),),
                Center(
                  child: Row(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 30,height: 30,color: Colors.blue,child: Center(child: Text('G',style: TextStyle(fontWeight: FontWeight.bold),),),),
                      Container(width: 30,height: 30,color: Colors.red,child: Center(child: Text('D',style: TextStyle(fontWeight: FontWeight.bold),),),),
                      Container(width: 30,height: 30,color: Colors.green,child: Center(child: Text('G',style: TextStyle(fontWeight: FontWeight.bold),),),),
                    ],
                  ),
                ),
                Text('Join us on'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.facebook),color: Colors.black,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.messenger),color: Colors.black,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.phone_android_outlined),color: Colors.black,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Icon(Icons.add_a_photo_rounded, color: Colors.black,),
    ),
    );
  }
}
