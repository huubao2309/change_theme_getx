import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_theme_mode/home/controllers/home_controller.dart';

class SettingTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Setting',
          style: TextStyle(color: Get.theme.accentColor),
        ),
        backgroundColor: Get.theme.primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextSetting(),
            const SizedBox(height: 80),
            _buildChangeThemButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextSetting() {
    return Text(
      'Setting Text',
      style: TextStyle(
        color: Get.theme.backgroundColor,
        fontSize: 20,
      ),
    );
  }

  Widget _buildChangeThemButton() {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Get.theme.primaryColor,
      child: MaterialButton(
        child: Text(
          'Change theme',
          style: TextStyle(
            color: Get.theme.accentColor,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          controller.changeTheme();
        },
      ),
    );
  }
}
