import 'package:flutter/material.dart';
import 'package:news_mnl/views/home_screen.dart';
import 'package:news_mnl/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Boolean that toggles between Splash and Home Screen
  bool isShowingSplash = true;

  //function to delay splash
  void loadSplashScreen() {
    Future.delayed(const Duration(seconds: 2));
    setState(() {
      isShowingSplash = !isShowingSplash;
    });
  }

  @override
  void initState() {
    loadSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News App mnl',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: isShowingSplash ? const SplashScreen() : const HomeScreen());
  }
}
