import 'package:flutter/material.dart';
import 'dart:async';
void main(){
  runApp(MyApp4());
}
class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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