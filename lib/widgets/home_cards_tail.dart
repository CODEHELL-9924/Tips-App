import 'package:flutter/material.dart';
import 'package:masterpes_app/widgets/home_cards.dart';

class HomeCardsTail extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeCardsTail> createState() => _HomeCardsTailState();
}

class _HomeCardsTailState extends State<HomeCardsTail> {
  final List tittle = ['SportyBet', 'HelaBet', '1Win', 'betway', 'BetPawa'];

  final List odds = [
    'Odds 10+',
    'Odds 67.2',
    'Odds 4',
    'Odds 100',
    'Odds 2.07',
    'Odds 8',
  ];

  final List descriptions = [
    'Correct Score',
    'Most Accurate',
    'Fixed Sure Odds',
    'Unknown verified Odds',
    'Sure Odds',
    'Take it or leave it',
  ];

  final List imgUrl = [
    'images/Hela-Bet-logo.png',
    'images/Hela-Bet-logo.png',
    'images/Hela-Bet-logo.png',
    'images/Hela-Bet-logo.png',
    'images/Hela-Bet-logo.png',
  ];

  final List status = ['True', 'True', 'True', 'True', 'True'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Expanded(
        child: ListView.builder(
          itemCount: tittle.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HomeCards(
              tittle: tittle[index],
              odds: odds[index],
              descriptions: descriptions[index],
              status: status[index],
              imgUrl: imgUrl[index],
            );
          },
        ),
      ),
    );
  }
}
