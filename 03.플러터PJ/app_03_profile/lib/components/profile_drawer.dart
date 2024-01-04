import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home,color: Colors.white,),
              SizedBox(width: 5,),
          Text(
            "Home",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),

            ],
          ),
        ],
      ),
    );
  }
}
