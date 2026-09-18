import 'package:flutter/material.dart';

class BetsCategories extends StatelessWidget {
  final String imageUrl, tittle, time;
  const BetsCategories({
    super.key,
    required this.imageUrl,
    required this.tittle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.height / 5.1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width / 5,
            imageUrl,
          ),
          Text(tittle),
          // ignore: avoid_unnecessary_containers
        ],
      ),
    );
  }
}
