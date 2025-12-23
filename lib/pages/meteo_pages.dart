import 'package:bootcamp1/pages/contacts_details.dart';
import 'package:bootcamp1/pages/profil_page.dart';
import 'package:flutter/material.dart';

class MeteoPages extends StatefulWidget {
  const MeteoPages({super.key});

  @override
  State<MeteoPages> createState() => _MeteoPagesState();
}

class _MeteoPagesState extends State<MeteoPages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 238, 230, 229),
      ),
      home: Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.all(8),
          title: Text(
            "Méteo",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
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
                radius: 30,
                child: Text("CB", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
          elevation: 12,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 10, 84, 146),
                    Color.fromARGB(255, 2, 209, 236),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                spacing: 12,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Icon(Icons.place, color: Colors.white),
                      Text(
                        'Bukavu, DRC',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '22°',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Partiellement couvert",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.cloud, size: 80, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 2),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("High", style: TextStyle(color: Colors.white)),
                            Text(
                              "25°",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Low", style: TextStyle(color: Colors.white)),
                            Text(
                              "18°",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Rain", style: TextStyle(color: Colors.white)),
                            Text(
                              "20%",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Column(
              children: [
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: _builCardView(
                        Icons.cloudy_snowing,
                        Colors.blue,
                        "Wind",
                        "12 km/h",
                      ),
                    ),
                    Expanded(
                      child: _builCardView(
                        Icons.water_drop_sharp,
                        Colors.red,
                        "Humidity",
                        "60%",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: _builCardView(
                        Icons.remove_red_eye,
                        Colors.purple,
                        "Visibility",
                        "10 km",
                      ),
                    ),
                    Expanded(
                      child: _builCardView(
                        Icons.av_timer_sharp,
                        Colors.amber,
                        "Presure",
                        "1013 mb",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "7 days before",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mon"),
                      Icon(Icons.sunny),
                      Row(
                        spacing: 12,
                        children: [
                          Text("22°"),
                          Text("16°", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tue"),
                      Icon(Icons.sunny),
                      Row(
                        spacing: 12,
                        children: [
                          Text("22°"),
                          Text("16°", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wed"),
                      Icon(Icons.sunny),
                      Row(
                        spacing: 12,
                        children: [
                          Text("22°"),
                          Text("16°", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAboutDialog(context: context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget _builCardView(
  IconData icon,
  MaterialColor color,
  String label,
  String value,
) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: color.withAlpha(25),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: color.withAlpha(50)),
    ),
    child: Row(
      children: [
        customIconContainer(icon: icon, color: color),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ],
    ),
  );
}
