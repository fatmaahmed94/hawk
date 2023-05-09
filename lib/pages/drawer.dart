// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hawk/shared/colors.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/HAWK prof.jpg"),
                  fit: BoxFit.cover),
            ),
            accountEmail: null,
            accountName: null,
          ),
          ListTile(
              title: Text(
                "HOME",
                style: TextStyle(color: BackGround),
              ),
              leading: Icon(
                Icons.home,
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                "SERVICES",
                style: TextStyle(color: BackGround),
              ),
              leading: Icon(Icons.add_shopping_cart),
              onTap: () {}),
          ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(color: BackGround),
              ),
              leading: Icon(
                Icons.help_center,
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                "BLOG",
                style: TextStyle(color: BackGround),
              ),
              leading: Icon(Icons.exit_to_app),
              onTap: () {}),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Bottom),
              onPressed: () {},
              child: Text("contact us"))
        ],
      ),
    );
  }
}
