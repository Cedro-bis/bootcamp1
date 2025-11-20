import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
             backgroundColor: Colors.blue.shade200,
              title: Center(child: Text('Second Answer', style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,),),),
              leading: Icon(Icons.menu),
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
