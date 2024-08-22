import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvcs/controller/news_controller.dart';
import 'package:getxmvcs/utils/themes/app_colors.dart';
import 'package:getxmvcs/utils/themes/app_text.dart';

class NewsScreen extends GetView<NewsController> {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text(
          'testGetxMvcs',
          style: AppText.h200,
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: controller.newlist.length,
          itemBuilder: (context, index) {
            final news = controller.newlist[index];

            return Card(
              child: ListTile(
                title: Text(
                  'Title :${news.title}',
                  style: AppText.h100,
                ),
                subtitle: Text(
                  'Author : ${news.author}',
                  style: AppText.h150,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
