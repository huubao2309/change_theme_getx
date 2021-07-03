
import 'package:get/get.dart';
import 'package:question_theme_mode/home/bindings/home_binding.dart';
import 'package:question_theme_mode/home/views/home_screen.dart';

part 'app_routes.dart';

const INITIAL = Routes.HOME;

final routePages = [
  GetPage(
    name: Routes.HOME,
    page: () => HomeScreen(),
    binding: HomeBinding(),
    children: const [

    ],
  ),
];
