import 'package:flutter/material.dart';
import 'package:masterpes_app/widgets/home_categories.dart';

class HomecategoriesTail extends StatefulWidget {
  const HomecategoriesTail({super.key});

  @override
  State<HomecategoriesTail> createState() => _HomecategoriesTailState();
}

class _HomecategoriesTailState extends State<HomecategoriesTail> {
  final List label = [
    'Sporty Bet',
    'BetPawa',
    'BetWay',
    'HelaBet',
    '1-win',
    'Mo-Bet',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
        itemCount: label.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeCategories(label: label[index]);
        },
      ),
    );
  }
}
