import 'package:flutter/material.dart';
import 'exercice1/exercice1_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devoir Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Exercice1_1(),
      debugShowCheckedModeBanner: false,
    );
  }
}