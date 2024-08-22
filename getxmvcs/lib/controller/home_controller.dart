import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  void incremention() {
    counter++;
  }
   void decrementation() {
    counter--;
  }

 // void seeNumber(){
 //   ScaffoldMessenger.of(Buil context).
  //}
}
