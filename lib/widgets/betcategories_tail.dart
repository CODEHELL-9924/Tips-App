import 'package:flutter/material.dart';
import 'package:masterpes_app/widgets/bets_categories.dart';

class BetcategoriesTail extends StatefulWidget {
  const new({super.key});

  @override
  State<BetcategoriesTail> createState() => _BetcategoriesTailState();
}

class _BetcategoriesTailState extends State<BetcategoriesTail> {
  final List imageUrl = [
    'images/betway.png',
    'images/Hela-Bet-logo.png',
    'images/images.jpg',
    'images/unamed.webp',
  ];

  final List tittle = ['100+ Odds', '10 oddds', '6.07 Odds', '9 Odds'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: imageUrl.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BetsCategories(
            imageUrl: imageUrl[index],
            tittle: tittle[index],
          );
        },
      ),
    );
  }
}
