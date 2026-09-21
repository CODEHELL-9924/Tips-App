import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';

class HomeCards extends StatelessWidget {
  final String tittle;
  final String odds;
  final String descriptions;
  final String status;
  final String imgUrl;
  const HomeCards({
    super.key,
    required this.tittle,
    required this.odds,
    required this.descriptions,
    required this.status,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColorThemes().containers,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 18,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 16,
              children: [
                ClipOval(
                  child: Image.asset(
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    imgUrl,
                  ),
                ),
                // .....
                Text(tittle, style: AppTextStyles().appFonts),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
