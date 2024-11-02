import 'package:flutter/material.dart';
import '../widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[50],
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(teamName: name),
            ],
          ),
        ),
      ),
    );
  }
}
