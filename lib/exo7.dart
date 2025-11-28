import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo2.dart';
import 'package:bootcamp1/exo3.dart';
import 'package:bootcamp1/exo4.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo8.dart';
import 'package:flutter/material.dart';

class MyApp7 extends StatelessWidget {
  const MyApp7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seventh Answer',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false,),
      home: const Meteo(),
    );
  }
}
class Meteo extends StatefulWidget {
  const Meteo({super.key});

  @override
  State<Meteo> createState() => _MeteoState();
}

class _MeteoState extends State<Meteo> {
  int _selectIndex = 0;
  static const List<Widget> _options = <Widget>[
    WeatherDetails(),
    Center(child: Text('Présivions')),
    Center(child: Text('Paramètre')),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
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
        title: Center(child: Text('Seventh Answer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
            color: Colors.white),),),
        //leading: Icon(Icons.menu, color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.local_grocery_store_outlined),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.perm_contact_cal),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,),

        ],
      ),
      body: _options.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Aujourd\'hui',),
        BottomNavigationBarItem(icon: Icon(Icons.next_plan), label: 'prevision'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Paramètres'),
      ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}
class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});
  Widget _buildIfoCard(IconData icon, String title, String value, Color color){
    return Card (
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color,),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
            ),
            child: const Center(
              child: Column(
                children: <Widget> [
                  Icon(Icons.cloudy_snowing,
                  color: Colors.white
                  ),
                  SizedBox(height: 10),
                  Text('Bukavu, DRC', style: TextStyle(fontSize: 28, color: Colors.white,fontWeight: FontWeight.w100),),
                  SizedBox(height: 5),
                  Text('18°C - Ensoleillé'),
                  Text('Mise à jour : 10 : 00 AM',
                  style: TextStyle(fontSize: 16, color: Colors.white70,),
                  )

                ],
              ),
            ),
          ),
        Padding(padding: const EdgeInsets.all(16),
          child: GridView.count(crossAxisCount: 2,
          shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 16,
            children: <Widget>[
              _buildIfoCard(Icons.thermostat, 'Temperature min','8°C', Colors.red),
              _buildIfoCard(Icons.water_drop, 'Humidity','65%', Colors.blue),
              _buildIfoCard(Icons.air, 'Warm','15 km/h', Colors.grey),
              _buildIfoCard(Icons.beach_access, 'Rain','1012 hpa', Colors.orange),
            ],
          ),

        ),
        ],
      ),
    );
  }
}

