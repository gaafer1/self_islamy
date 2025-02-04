import 'package:flutter/material.dart';
import 'package:self_islamy/common/colors.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(
   
   dividerTheme: DividerThemeData(
    color: AppColors.mainLightColor
    ) ,

    colorScheme: ColorScheme(
      brightness: Brightness.light,
       primary: AppColors.mainLightColor,
        onPrimary: AppColors.mainLightColor, 
        secondary: AppColors.whiteColor, 
        onSecondary: AppColors.blackColor,
         error: Colors.red,
          onError: AppColors.whiteColor, 
          surface: AppColors.whiteColor,
           onSurface: AppColors.whiteColor
    ),

    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.blackColor
      ),
      titleTextStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
     
     canvasColor: AppColors.mainLightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainLightColor,
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      type: BottomNavigationBarType.shifting,
    ),

    primaryColor: AppColors.mainLightColor,
    scaffoldBackgroundColor: Colors.transparent,

    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      )
  )
  );

  //=====================================================================================================//

  static ThemeData darkTheme = ThemeData(

    dividerTheme: DividerThemeData(
    color: AppColors.goldColor
    ) ,

colorScheme: ColorScheme(
  brightness: Brightness.dark,
   primary: AppColors.mainDarkColor, 
   onPrimary: AppColors.mainDarkColor, 
   secondary: AppColors.goldColor,
    onSecondary: AppColors.whiteColor, 
    error: Colors.red,
     onError: Colors.red,
      surface: AppColors.mainDarkColor,
       onSurface: AppColors.whiteColor),

    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.whiteColor
      ),
      titleTextStyle: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    canvasColor: AppColors.mainDarkColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainDarkColor,
      selectedItemColor: AppColors.goldColor,
      unselectedItemColor: AppColors.whiteColor,
      type: BottomNavigationBarType.shifting,
    ),

    primaryColor: AppColors.goldColor,
    scaffoldBackgroundColor: Colors.transparent,

    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.goldColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      )
  )
  );
}