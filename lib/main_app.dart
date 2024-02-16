import 'package:flutter/material.dart';
import 'package:practica3_5a24/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(155, 144, 93, 96),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 42, 126, 155)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 117, 36, 134),
          ),
          bodySmall: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 3, 55, 10),
          ),
        ),
      ),
    );
  }
}
