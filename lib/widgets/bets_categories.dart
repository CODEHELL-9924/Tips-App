import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';

class BetsCategories extends StatelessWidget {
  final String tittle, bookingCodes, odds;
  const BetsCategories({
    super.key,
    required this.tittle,
    required this.bookingCodes,
    required this.odds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColorThemes().containers,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 6,
          children: [
            Text(tittle, style: AppTextStyles().appFonts),
            Row(
              children: [
                Text(bookingCodes, style: AppTextStyles().appFontsLabelsWhite),
                Text(odds, style: AppTextStyles().appFontsLabelsWhitePure),
              ],
            ),

            ElevatedButton(onPressed: () {}, child: Text("Book Now")),
          ],
        ),
      ),
    );
  }
}
