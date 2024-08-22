import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvcs/controller/home_controller.dart';
import 'package:getxmvcs/utils/themes/app_colors.dart';
import 'package:getxmvcs/utils/themes/app_text.dart';

class HomeScrenn extends GetView<HomeController> {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sand,
      appBar: AppBar(
        backgroundColor: AppColors.sand2,
        title: Text('testGetxMvcs',style: AppText.h200,),
      ),
      body: Obx(()=> Center(
            child: Text(
              '${controller.counter}',
              style: AppText.h200,
            ),
          )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(backgroundColor: AppColors.coral,onPressed:controller.incremention,child: Icon(Icons.add,color: AppColors.sand,)),

          FloatingActionButton(
              backgroundColor: AppColors.sand,
              onPressed: controller.decrementation,
              child: Icon(
                Icons.add,
                color: AppColors.coral,
              )),        ],
      ),
      
    );
  }
}