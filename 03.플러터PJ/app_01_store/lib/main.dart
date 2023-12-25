import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stl로 쓰면 자동완성됨!
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(), // 이 클래스를 아래에 만듦
    );
  }
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          // Padding 위젯
          /*             
            padding: EdgeInsets.all(4방향전체),
            padding: EdgeInsets.only(left/top/right/bottom특정방향만),
            padding: EdgeInsets.symmetric(수직/수평중),
           */
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(children: [
              Text(
                "Woman",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              Text(
                "Kids",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              Text(
                "Shoes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              Text("Bag",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  )),
            ]),
          ),
          // 이미지 추가하기
          Image.asset(
            "assets/bag.jpeg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    ));
  }
}
