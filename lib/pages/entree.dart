import 'package:bootcamp1/pages/contact_page_advanced.dart';
import 'package:bootcamp1/pages/home_page.dart';
import 'package:bootcamp1/pages/meteo_pages.dart';
import 'package:flutter/material.dart';

class Entree extends StatefulWidget {
  const Entree({super.key});

  @override
  State<Entree> createState() => _EntreeState();
}

class _EntreeState extends State<Entree> {
  List _option = [HomePage(), MeteoPages(), ContactPageAdvanced()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _option[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.cloud), label: "Météo"),
          NavigationDestination(icon: Icon(Icons.person), label: "Contacts"),
        ],
      ),
    );
  }
}
