// ignore_for_file: prefer_const_constructors

import 'package:expense_tracker/bottom_navbar.dart';
import 'package:expense_tracker/screens/home_screen.dart';
import 'package:expense_tracker/utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.lora().fontFamily,
        brightness: Brightness.light,
      ),

      home: BottomNavBar(),
    );
  }
}
