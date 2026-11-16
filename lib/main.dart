import 'package:flutter/material.dart';
import 'package:pokemon/src/Page/pokemon2.dart';

void main() {
  runApp(const MyAppNew());
}

class MyAppNew extends StatelessWidget {
  const MyAppNew({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Pokemon2(),
    );
  }
}
