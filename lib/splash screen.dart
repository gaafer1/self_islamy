import 'package:flutter/material.dart';
import 'package:self_islamy/common/images.dart';
import 'package:self_islamy/homeScreen.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});
  static const routename="/";
  
  @override
  Widget build(BuildContext context) {
     Future.delayed(
      const Duration(seconds:20),
    () => Navigator.of(context).pushReplacementNamed(Homescreen.routename),);
    return Image.asset(AppImages.splashImage,width: double.infinity,height: double.infinity,fit: BoxFit.fill,)
    ;
  }
}