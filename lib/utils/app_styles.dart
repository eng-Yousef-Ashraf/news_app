import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/utils/app_colors.dart';

class AppStyles{
  static TextStyle meduim14White=GoogleFonts.inter(
    fontSize: 14,
    color: AppColors.white_color,
    fontWeight: FontWeight.w500
  );
  static TextStyle meduim14Black=GoogleFonts.inter(
      fontSize: 14,
      color: AppColors.black_color,
      fontWeight: FontWeight.w500
  );
  static TextStyle meduim16White=GoogleFonts.inter(
      fontSize: 16,
      color: AppColors.white_color,
      fontWeight: FontWeight.w500
  );
  static TextStyle meduim16Black=GoogleFonts.inter(
      fontSize: 16,
      color: AppColors.black_color,
      fontWeight: FontWeight.w500
  );
}