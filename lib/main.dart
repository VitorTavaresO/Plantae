import 'package:flutter/material.dart';
import 'package:plantae/registerScreen.dart';
import 'loadscreen.dart';
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
      theme: ThemeData(primarySwatch: Colors.green),
      home: Index(), //Para testar cada tela, troque o valor de home para a o nome da tela desejada
    );
  }
}
