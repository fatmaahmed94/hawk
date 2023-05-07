// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  String vartitle;
  String vartext;
  String varimage;

  Service(
      {required this.vartitle, required this.vartext, required this.varimage});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    Color boxcolor = Colors.orange;

    return InkWell(
      onDoubleTap: () {
        setState(() {});
      },
      onLongPress: () {},
      onTap: () {
        setState(() {});
      },
      child: Container(

        alignment: Alignment.center,
        padding: EdgeInsets.all(22),
        margin: EdgeInsets.all(22),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Image.asset(widget.varimage,
            fit:BoxFit.cover,
            height: 50,
            width: 50,
            ),
            
            Title(
                color: Colors.black,
                child: Text(
                  widget.vartitle,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.vartext,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
