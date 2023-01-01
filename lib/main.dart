import 'package:flutter/material.dart';
import 'package:news_app/networking/fetchNews.dart';
import 'package:news_app/models/newModels.dart';
import 'package:news_app/views/home_screen.dart';
import 'package:news_app/views/newsContainer.dart';
import 'package:news_app/views/splash_screen.dart';

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
  bool showingSplash = true;

  loadHome() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        showingSplash = !showingSplash;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          showingSplash ? const SplashScreen() : const MyHomePage(title: 'News App'),
    );
  }
}
