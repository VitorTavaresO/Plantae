import 'package:flutter/material.dart';
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
      title: 'Plantae_Testes',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const Index(),
    );
  }
}
