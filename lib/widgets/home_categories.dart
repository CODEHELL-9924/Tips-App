import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';

class HomeCategories extends StatelessWidget {
  final String label;
  const new({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColorThemes().buttonColor,
      ),
      child: Text('label', style: AppTextStyles().appFontsLabelsWhitePure),
    );
  }
}
