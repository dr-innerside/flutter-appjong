// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Text('Hello ListView'),
            Text('Hello ListView'),
            Text('Hello ListView'),
            Text('Hello ListView'),
            Text('Hello ListView'),
          ],
        ),
      ),
    );
  }
}
