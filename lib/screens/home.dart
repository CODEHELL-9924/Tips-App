import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';
import 'package:masterpes_app/screens/bets.dart';
import 'package:masterpes_app/widgets/betcategories_tail.dart';
import 'package:masterpes_app/widgets/bets_categories.dart';
import 'package:masterpes_app/widgets/homecategories_tail.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tips App", style: AppTextStyles.appTittle),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: AppColorThemes().iconColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(118),
                  ),
                  hintText: 'Search Everything Here.....',
                ),
              ),
              // ....
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber,
                ),
              ),
              // ....
              Text("Categories", style: AppTextStyles().appFonts),
              // ...

              HomecategoriesTail(),
              // ........

              Row(
                children: [
                  Text("Upcoming Events", style: AppTextStyles().appFonts),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bets()),
                      );
                    },
                    child: Text(
                      "See All",
                      style: AppTextStyles().appFontsLabelsWhite,
                    ),
                  ),
                ],
              ),
              // ........

              BetcategoriesTail(),
            ],
          ),
        ),
      ),
    );
  }
}
