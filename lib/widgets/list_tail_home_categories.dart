import 'package:flutter/material.dart';
import 'package:masterpes_app/widgets/home_categories.dart';

class ListTailHomeCategories extends StatefulWidget {
  const ListTailHomeCategories({super.key});

  @override
  State<ListTailHomeCategories> createState() => _ListTailHomeCategoriesState();
}

class _ListTailHomeCategoriesState extends State<ListTailHomeCategories> {
  final List label = [' Votes', 'Trainings', 'Updates'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return HomeCategories(label: label[index]);
        },
      ),
    );
  }
}
