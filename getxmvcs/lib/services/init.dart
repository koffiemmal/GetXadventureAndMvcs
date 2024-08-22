import 'package:get/get.dart';
import 'package:getxmvcs/controller/home_controller.dart';
import 'package:getxmvcs/controller/news_controller.dart';

Future<void> initDependencies() async {
  _registerController();
}

void _registerController() {
  Get.lazyPut(() => HomeController(), fenix: true);
  Get.lazyPut(() => NewsController(), fenix: true);
}
