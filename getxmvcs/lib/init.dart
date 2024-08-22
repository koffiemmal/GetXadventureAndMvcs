import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getxmvcs/services/init.dart';

class InitApp {
  Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await initDependencies();
  }
}
