import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_cycle8_sat/home_layout/home_layout.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = "splash-page";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assests/images/background_image.png"),
            fit: BoxFit.fill),
      ),
    );
  }
}
