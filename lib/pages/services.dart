// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hawk/shared/colors.dart';
import 'package:hawk/widgets/container.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class Card {
  String title;
  String text;
  String image;

  Card({required this.title, required this.text, required this.image});
}

List allCards = [
  Card(
      image: "assets/images/degital marketing.png",
      title: "Digital Marketing",
      text:
          " Developing strategic plans, Implementing advertising campaigns,Writing content and Managing pages"),
  Card(
      image: "assets/images/development.png",
      title: "Development",
      text:
          "  Building, designing and developing electronic systems, websites, applications."),
  Card(
      image: "assets/images/graphic-designer.png",
      title: "Graphic Design",
      text:
          "  Designing Social media designs, Product design, corporate profiles and any sort of designs"),
  Card(
      image: "assets/images/data-science.png",
      title: "Data Science",
      text:
          "  providing corporate, resource development, financial, and software consultancy, as well as project implementation, data analysis, and electronic data analysis tool building for institutions."),
  Card(
      image: "assets/images/training.png",
      title: "Training",
      text:
          "  We offer customized training programs for institutional and employee skill enhancement, including IT technology and programming language courses."),
  Card(
      image: "assets/images/it.png",
      title: "IT",
      text:
          "  offering IT services for companies, including technical support, network solutions, and equipping businesses with advanced technological equipment."),
];

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackGround,
        body: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(11),
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Bottom),
              child: Text("SERVICES",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Our",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Services",
                  style: TextStyle(fontSize: 25, color: Bottom),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                height: 500,
                child: ListView.builder(
                    itemCount: allCards.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Service(
                        vartitle: allCards[index].title,
                        vartext: allCards[index].text,
                        varimage: allCards[index].image,
                      );
                    }),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
