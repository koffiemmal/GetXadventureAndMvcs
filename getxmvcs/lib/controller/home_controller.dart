import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  void incremention() {
    counter++;
  }

  void decrementation() {
    if (counter<= 0) {
      
    }else{

    counter--;

    }
  }

  void Navigate() {
    Get.toNamed('/news');
  }

  // void seeNumber(){
  //   ScaffoldMessenger.of(Buil context).
  //}
}
