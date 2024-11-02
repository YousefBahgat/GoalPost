import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/team_model.dart';
import 'team_card.dart';

class TeamsSlider extends StatelessWidget {
  const TeamsSlider({
    super.key,
    required this.teams,
  });

  final List<TeamModel> teams;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: teams.map((team) {
          return Builder(
            builder: (BuildContext context) {
              return TeamCard(
                team: team,
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 110,
          viewportFraction: 0.5,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
