import 'package:get/get.dart';
import 'package:getxmvcs/screens/home/home_screnn.dart';

class AppRoute {
  static const String home = '/home';

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomeScrenn(),
    )
  ];
}
