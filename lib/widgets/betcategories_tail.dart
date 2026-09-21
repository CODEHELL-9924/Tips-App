import 'package:flutter/material.dart';
import 'package:masterpes_app/widgets/bets_categories.dart';

class BetcategoriesTail extends StatefulWidget {
  const BetcategoriesTail({super.key});

  @override
  State<BetcategoriesTail> createState() => _BetcategoriesTailState();
}

class _BetcategoriesTailState extends State<BetcategoriesTail> {
  final List bookingCodes = ['MSX87V', 'QSX7Y7', 'PLKJN9I', 'YHGI898'];

  final List odds = ['100+ Odds', '10 oddds', '6.07 Odds', '9 Odds'];

  final List tittle = ['Sporty Bet', '1X-Bet', 'BetPawa', 'Betway'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: tittle.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BetsCategories(tittle: tittle[index], bookingCodes: bookingCodes[index], odds: odds[index]);
        },
      ),
    );
  }
}
