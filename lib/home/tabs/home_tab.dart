import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_theme_mode/home/controllers/home_controller.dart';

class MainTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).platformBrightness}');
    print('${Theme.of(context).brightness}');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: TextStyle(color: Get.theme.accentColor),
        ),
        backgroundColor: Get.theme.primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: MaterialButton(
          color: Get.theme.primaryColor,
          textColor: Get.theme.accentColor,
          onPressed: () {
            print('Is Dark Mode: ${Get.isDarkMode}');
          },
          child: Text("Rock & Roll"),
        ),
      ),
    );
  }
}
