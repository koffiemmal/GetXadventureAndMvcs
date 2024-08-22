import 'package:get/get.dart';
import 'package:getxmvcs/controller/home_controller.dart';

Future<void> initDependencies() async {
  _registerController();
}

void _registerController() {
  Get.lazyPut(() => HomeController(), fenix: true);
}
