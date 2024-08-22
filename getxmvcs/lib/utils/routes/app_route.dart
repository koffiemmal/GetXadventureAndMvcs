import 'package:get/get.dart';
import 'package:getxmvcs/screens/home/home_screnn.dart';
import 'package:getxmvcs/screens/news/news_screen.dart';

class AppRoute {
  static const String home = '/home';
  static const String news = '/news';

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomeScrenn(),
    ),
    GetPage(name: news, page: () => NewsScreen())
  ];
}
