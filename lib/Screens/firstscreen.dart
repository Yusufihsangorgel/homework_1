import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_1/Screens/secondscreen.dart';
import 'package:homework_1/controllers/firstcontroller.dart';

class FirstScreen extends StatelessWidget {
  FirstController fx = Get.put(FirstController());

  goToSecond() {
    Get.to(SecondScreen(),
        arguments:
            "${fx.work.value}"); //2. sayfaya yönlendiren bir metod tanımladım
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100), //boyutunu ayarladım
        child: Center(
          child: SingleChildScrollView(
            //kaydırma özelliği verdim
            child: Column(
              children: [
                Image.asset("image/homework.png"),
                SizedBox(
                  height: 40,
                ),
                Obx(() {
                  return TextFormField(
                    onChanged: fx.workChanged,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: "Textinizi Giriniz",
                      errorText: fx.errorText.value,
                      labelStyle: TextStyle(color: Colors.red),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.text_format_outlined,
                        color: Colors.red,
                      ), //Suffix koyarsan icon sonda , prefix koyarsan başta olur.
                    ),
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => goToSecond(), child: Text("Onay"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
