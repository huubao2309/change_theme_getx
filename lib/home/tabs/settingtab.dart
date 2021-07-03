import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_theme_mode/home/controllers/home_controller.dart';

class SettingTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    print('Setting Tab rebuild');
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
            _buildChangeThemButton(context),
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

  Widget _buildChangeThemButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: context.theme.primaryColor,
      child: MaterialButton(
        child: Text(
          'Change theme',
          style: TextStyle(
            color: context.theme.accentColor,
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
