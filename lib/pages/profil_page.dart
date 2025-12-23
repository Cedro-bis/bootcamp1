import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Text("Profile", style: TextStyle(fontSize: 40)),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(60),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue.shade700),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Text(
                      "CB",
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                  ),
                  Text(
                    "Cédro Bisimwa",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "+243 993 743 957",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Text(
                    "cebistmus@gamil.com",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: BoxBorder.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                child: Column(
                  spacing: 12,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          child: Icon(Icons.person, color: Colors.green),
                        ),
                        Column(
                          children: [
                            Text(
                              'Edit your profile',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Update your informations',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade100,
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Colors.purpleAccent,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Account settings',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Manage your account',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          child: Icon(Icons.notifications, color: Colors.blue),
                        ),
                        Column(
                          children: [
                            Text(
                              'Notification',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Configure alerts',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          child: Icon(Icons.lock, color: Colors.orange),
                        ),
                        Column(
                          children: [
                            Text(
                              'Privacy & security',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Control your privacy',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 224, 220),
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          child: Icon(Icons.question_mark, color: Colors.grey),
                        ),
                        Column(
                          children: [
                            Text(
                              'Help & support',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Get assistance',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
