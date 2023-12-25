import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stl로 쓰면 자동완성됨!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StorePage(), // 이 클래스를 아래에 만듦
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(children: [
            Text(
              "Woman",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Kids",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Shoes",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Bag",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ])
        ],
      ),
    ));
  }
}
