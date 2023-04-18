import 'package:flutter/material.dart';
import 'package:plantae/loginScreen.dart';
import 'package:plantae/registerScreen.dart';
import 'package:plantae/loadScreen.dart';
import 'package:plantae/home.dart';
import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plantae',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Index(),
    );
  }
}
