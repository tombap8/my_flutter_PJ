import 'dart:ui';

import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      // padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "전체"),
          // SizedBox(width: 25),
          Spacer(),
          _buildMenuItem(Icons.emoji_food_beverage, "커피"),
          // SizedBox(width: 25),
          Spacer(),
          _buildMenuItem(Icons.fastfood, "버거"),
          // SizedBox(width: 25),
          Spacer(),
          _buildMenuItem(Icons.local_pizza, "피자"),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 70,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black12),
       gradient: LinearGradient(
          // linear gradient가 시작되고 끝나는 위치
          begin: Alignment.topCenter,
          // begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // end: Alignment.bottomLeft,
          // 각 색상에 대해 하나의 종료점을 추가. 종료점은 0에서 1까지 증가 해야함.
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5],
          // stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // 색상처리는 플러터의 Colors클래스 덕분에 겁나 쉬움.
            Color.fromARGB(255, 255, 248, 121),
            Color.fromARGB(255, 177, 180, 0),
          ],)
      // color: Colors.amber,
    ),
    child: Column(
      // 세로정렬 중앙
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(mIcon, color: Colors.redAccent, size: 30),
        SizedBox(height: 5), // 사이간격
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
