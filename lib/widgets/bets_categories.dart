import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      width: MediaQuery.of(context).size.height / 3.8,
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
            Padding(
              padding: const EdgeInsets.only(top: 7, bottom: 5),
              child: Row(
                children: [
                  Row(
                    spacing: -10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText(
                        bookingCodes,
                        style: AppTextStyles().appFontsLabelsWhite,
                      ),

                      IconButton(
                        icon: const Icon(Icons.copy, size: 18),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: bookingCodes));

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Booking code copied!'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  // ......
                  Spacer(),
                  Text(odds, style: AppTextStyles().appFontsLabelsWhitePure),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColorThemes().iconColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Book Now", style: AppTextStyles().appFonts),
                    Icon(Icons.shopping_cart_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
