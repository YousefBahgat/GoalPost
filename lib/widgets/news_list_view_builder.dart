import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:goalpost/widgets/custom_error_widget.dart';

import '../models/article_model.dart';

import '../services/news_service.dart';
import 'indicator.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.teamName});
  final String teamName;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();

    future = NewsService(Dio()).getFootballNews(name: widget.teamName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const CustomErrorWidget();
        } else {
          return const Indicator();
        }
      },
    );
  }
}
