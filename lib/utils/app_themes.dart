import 'package:flutter/material.dart';
import 'package:news/utils/app_colors.dart';
import 'package:news/utils/app_styles.dart';

class AppTheme {
  static ThemeMode themeMode=ThemeMode.light;
 static ThemeData lightTheme=ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white_color,
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),
   scaffoldBackgroundColor: AppColors.white_color,
   textTheme: TextTheme(
     labelLarge: AppStyles.meduim14Black,
     labelMedium: AppStyles.meduim16Black
   )
  );
 static ThemeData darkTheme=ThemeData(
   appBarTheme: AppBarTheme(
     backgroundColor: AppColors.black_color,
     centerTitle: true,
     scrolledUnderElevation: 0,
   ),
   scaffoldBackgroundColor: AppColors.black_color,
   textTheme: TextTheme(
     labelLarge: AppStyles.meduim14White,
     labelMedium: AppStyles.meduim16White
   )
 );
}