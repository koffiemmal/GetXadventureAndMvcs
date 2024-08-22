import 'dart:convert';

import 'package:getxmvcs/models/news_models.dart';
import 'package:http/http.dart';

class NewsService {
  // ignore: non_constant_identifier_names
  static Future<List<NewsModels>> NewsList() async {
    Uri uri = Uri.parse(
        "https://newsapi.org/v2/everything?q=*&sortBy=publishedAt&apiKey=dddf865021564730a464135b7219ca81&pageSize=10&language=fr");

    Response response = await get(uri);

    if (response.statusCode == 200) {
      List<NewsModels> newsList;

      newsList = (jsonDecode(response.body)["articles"] as List)
          .map((e) => fromToJson(e))
          .toList();
      return newsList;
    } else {
      return [];
    }
  }
}
