import 'package:flutter/material.dart';
import 'package:self_islamy/common/themes.dart';
import 'package:self_islamy/homeScreen.dart';
import 'package:self_islamy/screens/hadeth%20screen.dart';
import 'package:self_islamy/screens/quran%20screen.dart';
import 'package:self_islamy/screens/radio%20screen%20.dart';
import 'package:self_islamy/screens/sebha%20sreen.dart';
import 'package:self_islamy/splash%20screen.dart';
import 'package:self_islamy/tabs/quran%20tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homescreen.routename: (_) => const Homescreen(),
        Splash_screen.routename: (_) => const Splash_screen(),
        Quran_screen.routename: (_) =>  Quran_screen(),
        Hadeth_Screen.routename: (_) => const Hadeth_Screen(),
        Radio_Screen.routename: (_) => const Radio_Screen(),
        Sebha_sreen.routename: (_) => const Sebha_sreen(),
        QuranTab.routename: (_) => const QuranTab(),
      },
     theme: AppTheme.lightTheme,
     darkTheme: AppTheme.darkTheme,
     themeMode: ThemeMode.light,
    );
  }}