import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';
import 'package:masterpes_app/widgets/homecategories_tail.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Bets extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("More Bookings", style: AppTextStyles.appTittle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            HomecategoriesTail(),
            // ........
            Expanded(
              child: ListView.builder(
                itemCount: 18,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColorThemes().containers,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          spacing: 20,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                height: 75,
                                width: 75,
                                fit: BoxFit.cover,
                                "images/images.jpg",
                              ),
                            ),
                            // ..........
                            Column(
                              spacing: 8,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Full House",
                                  style: AppTextStyles().appFontsLabelsWhite,
                                ),
                                Text(
                                  "Discriptions.....",
                                  style: AppTextStyles.appFontsLabels,
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColorThemes().buttonColor,
                              ),
                              child: Text("SGR", style: AppTextStyles().iconic),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColorThemes().buttonColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Copy Code",
                                      style: AppTextStyles().appFonts,
                                    ),
                                    Icon(Icons.copy_rounded),
                                  ],
                                ),
                              ),
                              // ..........
                              Transform.scale(
                                scale: 1.3,
                                child: SlideCountdown(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withAlpha(60),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  duration: Duration(hours: 3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
