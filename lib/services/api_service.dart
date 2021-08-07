import 'dart:convert';

import 'package:http/http.dart';
import 'package:saltflutternews/model/article_model.dart';

class NewsApiService {
  //token API
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=keyword&apiKey=06f94513dc1b4c7db7a014d8cb70c239";

  //get article from API and transform to model
  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Article not found");
    }
  }
}
