import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/teams_list_view.dart';

import '../widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.green,
        backgroundColor: const Color.fromARGB(255, 217, 236, 196),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Goal',
              style: GoogleFonts.ubuntuCondensed(
                  color: Colors.black, fontSize: 27),
            ),
            Text(
              'Post',
              style: GoogleFonts.ubuntuCondensed(
                  color: Colors.green, fontSize: 27),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: TeamsListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsListViewBuilder(teamName: '"premier league"'),
          ],
        ),
      ),
    );
  }
}
