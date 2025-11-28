import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo11.dart';
import 'package:bootcamp1/exo2.dart';
import 'package:bootcamp1/exo3.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:bootcamp1/exo7.dart';
import 'package:bootcamp1/exo8.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const CounterScreen()
    );
  }
}
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  late Timer _timer;
  @override
  void initState(){
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer){
      _incrementCounter();
    });
  }
  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState((){
      _counter--;
    });
  }
  void _resetCounter(){
  setState((){
    _counter = 0;
  });
  }
  @override
  Widget build(BuildContext context){
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
      shadowColor: Colors.green,
      backgroundColor: Colors.blue.shade200,
      title: Center(child: const Text('auto incrementation')),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.download),color: Colors.black,)
      ],
    ),
    body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('the current value of increment is :',style: TextStyle(fontSize: 20,),),
        Text('$_counter', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,color: Colors.green),),
        const SizedBox(height: 50),
        const Text('(Is incremented automatically each 5 seconds)', style: TextStyle(fontStyle: FontStyle.italic,),
        ),
      ],
    ),),
    floatingActionButton: Padding(padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(onPressed: _decrementCounter,
        tooltip: 'decrement',
          heroTag: 'reset',
          backgroundColor: Colors.red,
          child: Center(child: Text('-', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),),),
        ),
        FloatingActionButton(onPressed: _resetCounter,
          tooltip: 'reboot',
          heroTag: 'reset',
          backgroundColor: Colors.blue,
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton(onPressed: _incrementCounter,
          tooltip: 'increment',
          heroTag: 'reset',
          backgroundColor: Colors.green,
          child: Center(child: Text('+', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),),),
        ),
      ],
    ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
  }
}