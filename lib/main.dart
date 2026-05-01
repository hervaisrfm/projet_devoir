import 'package:flutter/material.dart';
import 'exercice3/exercice3.dart';

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
      home: const Exercice3(),
      debugShowCheckedModeBanner: false,
    );
  }
}