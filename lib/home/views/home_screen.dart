import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_theme_mode/home/controllers/home_controller.dart';
import 'package:question_theme_mode/home/tabs/tabs.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(_buildWidget),
    );
  }

  Widget _buildWidget() {
    return Scaffold(
      body: Center(
        child: _buildContent(controller.currentTab.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildNavigationBarItem('Home', 'home'),
          _buildNavigationBarItem('Setting', 'setting'),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Get.theme.backgroundColor,
        selectedItemColor: Get.theme.primaryColor,
        currentIndex: controller.getCurrentIndex(controller.currentTab.value),
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Get.theme.accentColor,
        ),
        onTap: (index) => controller.switchTab(index),
      ),
    );
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return controller.mainTab;
      case MainTabs.setting:
        return controller.settingTab;
      default:
        return controller.mainTab;
    }
  }

  BottomNavigationBarItem _buildNavigationBarItem(String label, String icon) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon == 'home' ? Icons.home : Icons.settings,
        color: Get.theme.primaryColor,
        size: 14,
      ),
      label: label,
    );
  }
}
