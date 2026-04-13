import 'package:flutter/material.dart';
import 'package:news/utils/app_themes.dart';

import '../utils/app_colors.dart';

class ErrorPopUpWidget extends StatelessWidget {
final String message;
final VoidCallback onPressed;
  const ErrorPopUpWidget({super.key,required this.message,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppTheme.themeMode==ThemeMode.light?AppColors.black_color:AppColors.white_color
          ),),
          ElevatedButton(onPressed:onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.grey_color)
          ),
            child: Text('try again',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.themeMode==ThemeMode.light?AppColors.black_color:AppColors.white_color
              ),),
          )
        ],
      ),
    );
  }
}
