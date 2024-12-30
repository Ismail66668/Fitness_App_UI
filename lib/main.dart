import 'package:fitness_app_ui/screen/home/home_screen.dart';
import 'package:fitness_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        scaffoldBackgroundColor: AppColors.appcolor,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
