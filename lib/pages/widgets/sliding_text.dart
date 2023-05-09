// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hawk/shared/colors.dart';

class slidingtext extends StatelessWidget {
  const slidingtext({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: Text(
                "The Future Is Here",
                style: TextStyle(fontSize: 20, color: primaryColor),
                textAlign: TextAlign.center,
              ));
        });
  }
}
