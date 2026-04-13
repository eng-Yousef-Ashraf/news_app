import 'package:flutter/material.dart';
import 'package:news/screens/category_details/category_details.dart';
import 'package:news/utils/app_colors.dart';
import 'package:news/utils/app_themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppTheme.themeMode==ThemeMode.light?AppColors.black_color:AppColors.white_color
        ),),
      ),
      body: CategoryDetails(),
    );
  }
}
