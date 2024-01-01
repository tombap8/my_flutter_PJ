import 'package:flutter/material.dart';
import 'package:app_03_profile/components/profile_buttons.dart';
import 'package:app_03_profile/components/profile_count_info.dart';
import 'package:app_03_profile/components/profile_drawer.dart';
import 'package:app_03_profile/components/profile_header.dart';
import 'package:app_03_profile/components/profile_tab.dart';
import 'package:app_03_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar();
  }
}
