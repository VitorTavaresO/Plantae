import 'package:flutter/material.dart';

class indexScreen extends StatefulWidget {
  const indexScreen({super.key, required this.title});


  final String title;

  @override
  State<indexScreen> createState() => _indexScreen();
}

class _indexScreen extends State<indexScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,

              colors: [Color.fromRGBO(0,173, 132, 1), 
              Color.fromRGBO(0,173, 132, 1),
              Color.fromRGBO(0,173, 132, 1),  
              Color.fromRGBO(28,199,0,1),   
              Color.fromRGBO(24,174,0,1),  
              Color.fromRGBO(24,174,0,1)]),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column (
             mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Align(
            alignment: Alignment.bottomCenter,  
            child: Image.asset(
              'assets/images/PlantaE_Logo(w).png',
              height: 200,
              width: 200,
              ), 
            ),
             const Text(
            'PLANTAE', 
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, ), 
            ),
            ],
             ), 
          ),
    );
  }
}
