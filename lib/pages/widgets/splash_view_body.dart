// ignore_for_file: prefer_const_constructors, duplicate_import, unused_import, unused_element, dead_code, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawk/pages/home.dart';
import 'package:hawk/pages/widgets/sliding_text.dart';
import 'package:hawk/shared/colors.dart';
import 'sliding_text.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    void initStateNavigation() {
      animationController =
          AnimationController(vsync: this, duration: Duration(seconds: 1));
      slidingAnimation =
          Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
              .animate(animationController);
      animationController.forward();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const Home(),
            transation: Transation.fade, duration: Duration(milliseconds: 250));
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/WEBIcon.png",
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Hawk Innovations",
          style: TextStyle(fontSize: 25, color: Bottom),
          textAlign: TextAlign.center,
        ),
        slidingtext(slidingAnimation: slidingAnimation),
      ],
    );
  }
}

class Transation {
  static var fade;
}

class Get {
  static void to(Home Function() param0,
      {required transation, required Duration duration}) {}
}
