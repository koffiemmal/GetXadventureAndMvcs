import 'package:get/get.dart';
import 'package:getxmvcs/models/news_models.dart';
import 'package:getxmvcs/services/news_service.dart';

class NewsController extends GetxController {
  var newlist = <NewsModels>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    receiveNews();
  }

  void receiveNews() async {
    try {
      isLoading(true);

      var result = await NewsService.NewsList();

      
        newlist.assignAll(result);
      

      print(newlist);
    } finally {
      isLoading(false);
    }
  }
}
