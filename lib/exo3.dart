import 'package:flutter/material.dart';
void main(){
  runApp(MyApp3());
}
class MyApp3 extends StatelessWidget {
  const MyApp3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
