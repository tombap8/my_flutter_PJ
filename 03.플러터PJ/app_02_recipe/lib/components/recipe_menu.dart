import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "전체"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "커피"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "버거"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "피자"),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 50,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      // 세로정렬 중앙
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(mIcon, color: Colors.redAccent, size: 30),
        SizedBox(height: 5), // 사이간격
        Text(
          text,
          style: TextStyle(color: Colors.black87),
        ),
      ],
    ),
  );
}
