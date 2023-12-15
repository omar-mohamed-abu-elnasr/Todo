import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todopro/screens/homeScreen.dart';
import 'package:todopro/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        home: Home(),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          Home.routeName: (context) => Home(),
        });
  }
}
