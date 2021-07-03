import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/bindings/home_binding.dart';
import 'home/views/home_screen.dart';
import 'routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      defaultTransition: Transition.fade,
      getPages: routePages,
      smartManagement: SmartManagement.keepFactory,
      title: 'Theme change using Get',
      initialBinding: HomeBinding(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green,
        accentColor: Colors.red,
        backgroundColor: Colors.black,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
        accentColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
