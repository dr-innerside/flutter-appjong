// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 100, // 전체 아이템 개수
          itemBuilder: (context, index) {
            // index는 0 ~ 99까지 증가하며 itemCount만큼 호출됩니다.

            // Text 위젯을 반환합니다.
            return Text("$index");
          },
        ),
      ),
    );
  }
}
