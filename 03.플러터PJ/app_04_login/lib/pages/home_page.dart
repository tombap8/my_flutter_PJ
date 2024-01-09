import 'package:flutter/material.dart';
import 'package:app_04_login/components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 200),
            Logo("Dart Soft"),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                // Navigator.pop(context); // 1. 화면 스택 제거
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
