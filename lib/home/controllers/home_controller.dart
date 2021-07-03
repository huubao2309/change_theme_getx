import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_theme_mode/home/tabs/home_tab.dart';
import 'package:question_theme_mode/home/tabs/settingtab.dart';
import 'package:question_theme_mode/home/tabs/tabs.dart';

class HomeController extends GetxController {
  var currentTab = MainTabs.home.obs;

  late MainTab mainTab;
  late SettingTab settingTab;

  @override
  void onInit() {
    super.onInit();
    mainTab = MainTab();
    settingTab = SettingTab();
  }

  void changeTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }

  void switchTab(index) {
    final tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.setting;
      default:
        return MainTabs.home;
    }
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.setting:
        return 1;
      default:
        return 0;
    }
  }
}
