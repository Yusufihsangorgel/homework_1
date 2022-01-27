import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_1/Screens/firstscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}