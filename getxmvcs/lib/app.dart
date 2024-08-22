import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvcs/utils/routes/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "TestGetxMvcs",
      getPages: AppRoute.routes,
      initialRoute: AppRoute.home,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,    
    );
  }
}
