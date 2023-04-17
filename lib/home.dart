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
        selectedItemColor: const Color.fromARGB(255, 65, 65, 64),
        onTap: _onItemTapped,
      ),
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: const Text('Card title 1'),
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(0, 173, 132, 1)),
                  ),
                  onPressed: null,
                  child: const Text('ACTION 1'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(0, 173, 132, 1)),
                  ),
                  onPressed: null,
                  child: const Text('ACTION 2'),
                ),
              ],
            ),
          ],
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
