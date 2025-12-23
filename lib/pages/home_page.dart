import 'package:bootcamp1/pages/contact_page_advanced.dart';
import 'package:bootcamp1/pages/profil_page.dart';
import 'package:flutter/material.dart';

const activityIcons = [
  Icons.music_note_outlined,
  Icons.people_outline,
  Icons.notifications_outlined,
];
const List<MaterialColor> activityColors = [
  Colors.purple,
  Colors.green,
  Colors.blue,
];
const activityTitles = [
  'Listenedto Spotify',
  'Added 3 new contacts',
  '5 new notifications',
];
const activitySubTitles = ["2 hours ago", "5 hours ago", "1 days ago"];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Home'),
          actions: [
            Padding(padding: EdgeInsets.all(8)),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilPage()),
                );
              },
              child: CircleAvatar(
                radius: 20,
                child: Text("CB", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      // spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            Text('Monday, December 25, 2025'),
                          ],
                        ),
                        Text(
                          "Welcome back !",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Here's what's happening today"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactPageAdvanced(),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              spacing: 12,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(Icons.group_outlined),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Text("Contact"), Text("248")],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade200,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            spacing: 12,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(Icons.music_note_outlined),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text("Playlist"), Text("32")],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.purple.shade200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.cloud_outlined),
                                Text("Current Weather"),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Bukavu, DRC'),
                                Text("High: 25° Low: 18°"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "22°",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text("Partly cloud"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Recent activities"),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 236, 236),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      spacing: 12,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.purple.shade100,
                              ),
                              child: Icon(
                                Icons.music_note_outlined,
                                size: 16,
                                color: Colors.purple,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Listened to Sptify'),
                                Text(
                                  "2 hours ago",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.green.shade100,
                              ),
                              child: Icon(
                                Icons.group_outlined,
                                size: 16,
                                color: Colors.green,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Added 3 new contacts'),
                                Text(
                                  "5 hours ago",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue.shade100,
                              ),
                              child: Icon(
                                Icons.notifications_outlined,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('5 new notifications'),
                                Text(
                                  "1 day ago",
                                  style: TextStyle(
                                    fontSize: 10,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
