// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, dead_code, prefer_typing_uninitialized_variables
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:hawk/pages/drawer.dart';
import 'package:hawk/shared/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: BackGround,
        title: Row(
          children: [
            Image.asset(
              "assets/images/WEBIcon.png",
              width: 55,
            ),
            SizedBox(width: 15),
            Text(
              "Hawk Innovations",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text("HAWK INNOVATIONS",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "THE FUTURE IS HERE",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Learn more")),
        ],
      ),
    );
  }
}
