
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:hawk/pages/contact_us.dart';
import 'package:hawk/pages/services.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ContactUs
      (),
    );
  }
}
class Hawh extends StatelessWidget {
  const Hawh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}