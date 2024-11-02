import 'package:flutter/material.dart';

import '../models/team_model.dart';

import 'teams_slider.dart';

class TeamsListView extends StatelessWidget {
  const TeamsListView({
    super.key,
  });

  final List<TeamModel> teams = const [
    TeamModel(logo: 'assets/Arsenal.png', teamName: 'Arsenal'),
    TeamModel(logo: 'assets/Barcelona.png', teamName: 'Barcelona'),
    TeamModel(logo: 'assets/Bayern Munich.png', teamName: 'Bayern Munich'),
    TeamModel(
        logo: 'assets/Borussia Dortmund.png', teamName: 'Borussia Dortmund'),
    TeamModel(logo: 'assets/Chelsea.png', teamName: 'Chelsea'),
    TeamModel(logo: 'assets/Liverpool.png', teamName: 'Liverpool'),
    TeamModel(logo: 'assets/Manchester City.png', teamName: 'Manchester City'),
    TeamModel(
        logo: 'assets/Manchester United.png', teamName: 'Manchester United'),
    TeamModel(logo: 'assets/Real Madrid.png', teamName: 'Real Madrid'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TeamsSlider(teams: teams));
  }
}
