import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';

class HomeCategories extends StatelessWidget {
  final String label;
  // final bool isSelected;
  const HomeCategories({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped");
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColorThemes().containers,
        ),
        child: Text(label, style: AppTextStyles().appFontsLabelsWhite),
      ),
    );
  }
}
