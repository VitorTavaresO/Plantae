import 'package:flutter/material.dart';
import 'package:plantae/loginScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentPageIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 173, 132, 1),
        title: const Text('PLACES'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(0, 173, 132, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.yard),
            label: 'Plants',
            backgroundColor: Color.fromRGBO(0, 173, 132, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(0, 173, 132, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromRGBO(0, 173, 132, 1),
          ),
        ],
        currentIndex: currentPageIndex,
        selectedItemColor: Color.fromARGB(255, 65, 65, 64),
        onTap: _onItemTapped,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 500,
                child: Card(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: const Color.fromRGBO(0, 173, 132, 1),
        child: const Icon(Icons.add_home),
      ),
    );
  }
}
