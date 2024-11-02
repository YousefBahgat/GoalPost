//import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import '../models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getFootballNews({required String name}) async {
    String date = getTheDateBeforeSevenDays();

    //get the news from that request url
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=$name&apiKey=af5b0ffa047e41138ab5e63c47ddaa20&from=$date');
    //note: the datatype is defined based on the response, it could be Map or List.
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articlesList = [];
    //building list of objects [Articles]
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articlesList.add(articleModel);
      //print(articleModel.url);
    }

    return articlesList;
  }

  String getTheDateBeforeSevenDays() {
    DateTime now = DateTime.now();
    // Subtract 7 days
    DateTime newDate = now.subtract(const Duration(days: 7));
    String formattedNewDate = DateFormat('yyyy-MM-dd').format(newDate);
    return formattedNewDate;
  }

  /* Future<bool> isInternetAvailable() async {
    try {
      final foo = await InternetAddress.lookup('google.com');
      return foo.isNotEmpty && foo[0].rawAddress.isNotEmpty ? true : false;
    } catch (e) {
      return false;
    }
  } */
}
