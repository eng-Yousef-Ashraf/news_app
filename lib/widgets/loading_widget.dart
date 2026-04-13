import 'package:flutter/material.dart';
import 'package:news/utils/app_colors.dart';

import '../utils/app_themes.dart';
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
      color:AppTheme.themeMode==ThemeMode.light?AppColors.black_color:AppColors.white_color ,
    ),);
  }
}
