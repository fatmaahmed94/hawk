// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hawk/pages/widgets/splash_view_body.dart';
import 'package:hawk/shared/colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: BackGround,
      body: SplashViewbody(),
    );
  }
}