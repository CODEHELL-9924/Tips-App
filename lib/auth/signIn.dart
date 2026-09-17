import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';

class Signin extends StatefulWidget {
  final Function function;

  const Signin({super.key, required this.function});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          spacing: 18,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Register", style: AppTextStyles.appTittle),
            SizedBox(height: 5),

            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  "Enter Username",
                  style: AppTextStyles.appFontsLabels,
                ),
                prefixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                label: Text("Enter Email", style: AppTextStyles.appFontsLabels),
                prefixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  "Enter Your Password",
                  style: AppTextStyles.appFontsLabels,
                ),
                prefixIcon: Icon(Icons.lock_outline_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColorThemes().buttonColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("Sign Up", style: AppTextStyles().appFonts),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: AppTextStyles.appFontsLabels,
                ),
                TextButton(
                  onPressed: () {
                    widget.function();
                  },
                  child: Text(
                    "Log In",
                    style: AppTextStyles.appFontsLabels.copyWith(
                      color: AppColorThemes().buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
