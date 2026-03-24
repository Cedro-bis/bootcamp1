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
                    _containerView(
                      Icons.person_outline,
                      Colors.green.shade100,
                      Colors.green,
                      'Edit your profil',
                      'Update your information',
                    ),
                    _containerView(
                      Icons.settings_outlined,
                      Colors.purple.shade100,
                      Colors.purple,
                      'Account settings',
                      'Manage your account',
                    ),
                    _containerView(
                      Icons.notifications_outlined,
                      Colors.blue.shade100,
                      Colors.blue,
                      'Notifications',
                      'Configure alerts',
                    ),
                    _containerView(
                      Icons.lock_outline,
                      Colors.orange.shade100,
                      Colors.orange,
                      'Privacy & security',
                      'Control your privacy',
                    ),
                    _containerView(
                      Icons.question_mark_outlined,
                      Colors.grey.shade300,
                      Colors.grey,
                      'Help & support',
                      'Get assistance',
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

  Widget _containerView(icons, colors1, colors2, text1, text2) {
    return Row(
      spacing: 12,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colors1,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icons, color: colors2),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1, style: TextStyle(fontSize: 18)),
            Text(text2, style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
