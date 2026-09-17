import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/screens/bets.dart';
import 'package:masterpes_app/screens/home.dart';
import 'package:masterpes_app/screens/settings.dart';

class Landing extends StatefulWidget {
  const new({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int currentIndex = 0;
  final List pages = [Home(), Bets(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // .......

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: AppColorThemes().iconColor,
            ),
            label: 'Home',
          ),
          //

          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.accusoft,
              color: AppColorThemes().iconColor,
            ),
            label: 'Bets',
          ),
          //

          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: AppColorThemes().iconColor,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
