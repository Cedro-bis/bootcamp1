import 'package:flutter/material.dart';
void main (){
  runApp(MyApp6());
}
class Contact {
  final String name;
  final String number;
  final  image;

  const Contact ({required this.name, required this.number, required this.image});
}
class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sixth Answer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListOfContacts(),
    );
  }
}
class ListOfContacts extends StatelessWidget {
  const ListOfContacts({super.key});

  final List<Contact> Contacts = const [
    Contact(name: "Nsimire", number: "0998766726", image: AssetImage("lib/image/cedro.jpg")),
    Contact(name: "Lydia", number: "0978938473", image: AssetImage("lib/image/3.png"),),
    Contact(name: "Patrick", number: "0927376834", image: AssetImage("lib/image/2.jpg"),),
    Contact(name: "Harmonize", number: "0998764479", image: AssetImage("lib/image/1.jpg"),),
    Contact(name: "Fally", number: "0997484362", image: AssetImage("lib/image/4.jpg"),),
    Contact(name: "Sweet", number: "0976264362", image: AssetImage("lib/image/5.jpg"),),
    Contact(name: "Deborah", number: "0976264362", image: AssetImage("lib/image/5.jpg"),),
    Contact(name: "Ester", number: "0976264362", image: AssetImage("lib/image/5.jpg"),),
    Contact(name: "Liza", number: "0976264362", image: AssetImage("lib/image/5.jpg"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Center(child: Text('Sixth Answer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
            color: Colors.white),),),
        //leading: Icon(Icons.menu, color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.local_grocery_store_outlined),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.perm_contact_cal),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,),

        ],
      ),
      body: ListView.builder(
          itemCount: Contacts.length,
          itemBuilder: (context, index){
            final Contact = Contacts[index];
            return Padding(padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: Contact.image,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.teal.shade700,fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(Contact.name),
                    subtitle: Text(Contact.number),
                    trailing: const Icon(Icons.phone),
                    onTap: (){
                      SnackBar(content: Text('Vous avez cliqué sur'),
                        duration: Duration(seconds: 3),);},
                  ),
                ),
            );
          }
      ),
      );
  }
}
