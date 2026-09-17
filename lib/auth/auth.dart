import 'package:flutter/material.dart';
import 'package:masterpes_app/auth/login.dart';
import 'package:masterpes_app/auth/signIn.dart';

class Auth extends StatefulWidget {
  const new({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool isLogin = true;

  void swaPScreen() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return Login(function: swaPScreen);
    } else {
      return Signin(function: swaPScreen);
    }
  }
}
