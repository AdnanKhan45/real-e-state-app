import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:real_estate/presentation/pages/detail_page.dart';
import 'package:real_estate/presentation/pages/landing_page.dart';

import 'utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real e State",
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE),
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        fontFamily: "Montserrat",
      ),
      home: LandingPage(),
    );
  }
}
