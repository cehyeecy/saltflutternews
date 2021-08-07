import 'package:flutter/material.dart';
import 'package:saltflutternews/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(article.urlToImage),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(6),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(28)),
              child: Text(
                article.source.name,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(article.description),
          ],
        ),
      ),
    );
  }
}
