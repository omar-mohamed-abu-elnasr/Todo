import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todopro/screens/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      },
    );

    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 227, 211, 1.0),
      body: Center(
        child: Image(
          image: const AssetImage("assets/images/ToDoScreen.png"),
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
