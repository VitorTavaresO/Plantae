import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plantae',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Plantae'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromRGBO(0,173, 132, 1),  Color.fromRGBO(0,173, 132, 1), Color.fromRGBO(0,173, 132, 1),  Color.fromRGBO(28,199,0,1),  Color.fromRGBO(28,199,0,1),  Color.fromRGBO(28,199,0,1), Color.fromRGBO(24,174,0,1),  Color.fromRGBO(24,174,0,1), Color.fromRGBO(24,174,0,1)]),),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset(
              'assets/images/PlantaE_Logo(g).png',
              height: 200,
              width: 200,
            ),
            ),
          )
    );
  }
}