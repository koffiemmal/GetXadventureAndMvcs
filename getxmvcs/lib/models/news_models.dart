// ignore_for_file: public_member_api_docs, sort_constructors_first
class NewsModels {
  final String title;

  final String author;
  NewsModels({
    required this.title,
    required this.author,
  });
}

NewsModels fromToJson(Map<String, dynamic> json) {
  return NewsModels(title: json["title"] ?? "", author: json["author"] ?? "");
}
