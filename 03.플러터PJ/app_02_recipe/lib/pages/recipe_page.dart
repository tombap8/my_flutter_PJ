import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_02_recipe/components/recipe_list_item.dart';
import 'package:app_02_recipe/components/recipe_menu.dart';
import 'package:app_02_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        // 상하/좌우 대칭 여백패딩 설정(symmetric:대칭적인)
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(), 
            RecipeListItem("coffee", "커피 레시피"),
            RecipeListItem("burger", "햄버거 레시피"),
            RecipeListItem("pizza", "피자 레시피"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
