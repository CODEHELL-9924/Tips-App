import 'package:flutter/material.dart';
import 'package:masterpes_app/config/app_color_themes.dart';
import 'package:masterpes_app/config/app_text_styles.dart';
import 'package:masterpes_app/screens/landing.dart';

class Login extends StatefulWidget {
  final Function function;
  const Login({super.key, required this.function});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 14,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: AppTextStyles.appTittle),
            SizedBox(height: 5),

            TextFormField(
              decoration: InputDecoration(
                label: Text("Email", style: AppTextStyles.appFontsLabels),
                prefixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 6),

            TextFormField(
              decoration: InputDecoration(
                label: Text("Password", style: AppTextStyles.appFontsLabels),
                prefixIcon: Icon(Icons.lock_outline_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Landing()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColorThemes().buttonColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("Login Now", style: AppTextStyles().appFonts),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account?",
                  style: AppTextStyles.appFontsLabels,
                ),
                TextButton(
                  onPressed: () {
                    widget.function();
                  },
                  child: Text(
                    "Sign Up",
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
