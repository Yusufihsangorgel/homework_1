import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_1/controllers/firstcontroller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    FirstController fx = Get.put(FirstController()); // controller

    return Scaffold(
      appBar: AppBar(
        title: Text(data.toString()),
      ),
    );
  }
}
