import 'dart:ffi';

import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String mail = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Formulaire"), elevation: 12),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 2, color: Colors.green),
                ),
                labelText: "Votre e-mail",
                helperText: "il faut mettre tout en miniscule",
                suffix: Icon(Icons.mail),
              ),
              onChanged: (value) {
                setState(() {
                  mail = value;
                });
              },
            ),
            SizedBox(height: 12),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     backgroundColor: WidgetStatePropertyAll(Colors.blue.shade200),
            //   ),
            //   onPressed: () {

            //   },
            //   child: Text('soumettre'),
            // ),
            Container(
              padding: EdgeInsets.all(12),
              width: 75,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: BoxBorder.all(color: Colors.black, width: 0.5),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(mail), Icon(Icons.message)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
