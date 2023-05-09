// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawk/shared/colors.dart';
import 'package:hawk/shared/constans.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

final PageController _pageController = PageController();
int currentpage = 0;

@override
void dispose() {
  _pageController.dispose();
  dispose();
}

class _ContactUsState extends State<ContactUs> {
  bool isvisable = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CupertinoTabBar(
            backgroundColor: BackGround,
            onTap: (index) {
              setState(() {
                currentpage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.email,
                    color: currentpage == 0 ? primaryColor : secondaryColor),
                label: "Info@hawkegypt.com",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone,
                    color: currentpage == 1 ? primaryColor : secondaryColor),
                label: "02 23745810",
              ),
            ]),
        backgroundColor: BackGround,
        body: Padding(
          padding: EdgeInsets.all(33),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(225, 225, 225, 225),
                  radius: 64,
                  backgroundImage: AssetImage(
                      "assets/images/Avatar-Profile-PNG-Picture.png"),
                ),
                SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: DecorationTextfild.copyWith(
                    hintText: "Enter Your UserName : ",
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 33),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: DecorationTextfild.copyWith(
                      hintText: "Enter Your Email : ",
                      suffixIcon: Icon(Icons.email)),
                ),
                SizedBox(height: 33),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isvisable ? true : false,
                  decoration: DecorationTextfild.copyWith(
                      hintText: "Enter Your PassWord : ",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isvisable = !isvisable;
                            });
                          },
                          icon: Icon(Icons.visibility))),
                ),
                SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: DecorationTextfild.copyWith(
                      hintText: "Subject: ",
                      suffixIcon: Icon(Icons.text_format)),
                ),
                SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: DecorationTextfild.copyWith(
                      hintText: "Enter Your Message: ",
                      suffixIcon: Icon(Icons.message)),
                ),
                SizedBox(height: 33),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Bottom),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(Icons.location_pin,color: Colors.red,),
                  Text("103 Selah El Mohandseen St Helwan, Cairo Governorate, Egypt",style: TextStyle(color: Colors.white),)

                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}