import 'package:f1_app/app/modules/menu/bindings/tabMenu_binding.dart';
import 'package:f1_app/app/modules/menu/views/tabMenu_view.dart';
import 'package:f1_app/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:f1_app/app/modules/welcome/views/welcome_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
  static const welcome = Routes.welcome;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.menu,
      page: () => const TabMenuView(),
      binding: MenuBinding(),
    ),
  ];
}
