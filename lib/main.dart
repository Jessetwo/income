import 'package:flutter/material.dart';
import 'package:income/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.green.withOpacity(0.7),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
