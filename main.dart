import 'package:flutter/material.dart';
import 'package:rent_car/constants/colors.dart';

import 'screens/welcome_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rent App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: greyColor),
        useMaterial3: true,
      ),
      home: const WelcomeScreen2(),
    );
  }
}
