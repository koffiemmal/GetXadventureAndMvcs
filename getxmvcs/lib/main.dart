import 'package:flutter/material.dart';
import 'package:getxmvcs/app.dart';
import 'package:getxmvcs/init.dart';

void main() async {
 await InitApp().setup();
  runApp(const MyApp());
}
