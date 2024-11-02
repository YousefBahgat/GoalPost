import 'package:flutter/material.dart';
import '../screens/category_screen.dart';

import '../models/team_model.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({super.key, required this.team});

  final TeamModel team;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(
                name: team.teamName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(team.logo), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
