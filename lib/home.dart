import 'package:flutter/material.dart';
import 'package:plantae/loginScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class ElevatedCard extends StatelessWidget {
  const ElevatedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 100,
                  child: Image.network(
                      'https://www.thespruce.com/thmb/VWAkB4fMGLfnuF-05zP5X-m3InM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/home-improvement-smart-ways-to-update-your-front-yard-2736970-hero-12e970406e734b45930d3f80a9783001.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              title: const Text('Casa'),
              subtitle: const Text('Plantas: 5🪴'),
            ),
          ],
        ),
      ),
    );
  }
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
      resizeToAvoidBottomInset: false,
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
        selectedItemColor: const Color.fromARGB(255, 65, 65, 64),
        onTap: _onItemTapped,
      ),
      body: Column(
        children: const <Widget>[
          ElevatedCard(),
        ],
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
