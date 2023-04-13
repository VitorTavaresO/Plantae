import 'package:flutter/material.dart';
import 'package:plantae/loginScreen.dart';

class PlacesListScreen extends StatefulWidget {
  const PlacesListScreen({super.key});

  @override
  PlacesListScreenState createState() => PlacesListScreenState();
}

class PlacesListScreenState extends State<PlacesListScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 173, 132, 1),
        title: const Text('PLACES'),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromRGBO(0, 173, 132, 1),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
