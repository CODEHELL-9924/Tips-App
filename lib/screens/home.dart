import 'package:calender_picker/calender_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';
import 'package:masterpes_app/screens/bets.dart';
import 'package:masterpes_app/widgets/home_cards_tail.dart';

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
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(118),
                  ),
                  hintText: 'Search Everything Here.....',
                ),
              ),
              // ....
              Carousel(
                indicatorBarColor: Colors.transparent,
                activateIndicatorColor: Colors.orange,
                height: MediaQuery.of(context).size.height * 0.3,
                // animationPageDuration: Duration(milliseconds: 10),
                autoScroll: true,
                // widgets
                items: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/images.jpg'),
                      ),
                    ),
                  ),
                  // ..
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/betway.png'),
                      ),
                    ),
                  ),
                  // .....
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/unnamed.webp'),
                      ),
                    ),
                  ),
                ],
              ),
              // ....

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
                    child: Text("See All", style: AppTextStyles().textIcon),
                  ),
                ],
              ),
              // ........
              CalendarPicker(
                style: CalendarStyle.material3(),
                selectionMode: CalendarSelectionMode.single,
                onDateSelected: (date) {
                  print('Selected: $date');
                },
              ),

              HomeCardsTail(),
            ],
          ),
        ),
      ),
    );
  }
}
