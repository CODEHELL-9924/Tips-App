import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';
import 'package:masterpes_app/widgets/homecategories_tail.dart';

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
                      color: AppColorThemes().smallcontainers,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      spacing: 26,
                      children: [
                        Row(
                          spacing: 20,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width:
                                    MediaQuery.of(context).size.width * 0.178,
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
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: double.infinity,
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
