import 'package:flutter/material.dart';
import 'package:untitled/home_sreen.dart';
import 'package:untitled/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      themeMode: ThemeMode.dark,
      home: const SplashScreen(),
    );
  }
}
