import 'package:finance_app/shared/themes/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final light20 =
      GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 20);
  static final light = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
  );
  static final light24 =
      GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 24);
  static final regular24 =
      GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 24);
  static final regular32 = GoogleFonts.poppins(
      fontWeight: FontWeight.w300, fontSize: 32, color: AppColors.blue1);
  static final header16 = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.blue1);
  static final header14 = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.blue1);
  static final header20 = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.blue1);
  static final addButton =
      GoogleFonts.poppins(fontWeight: FontWeight.w700, color: AppColors.white);
  static final header24 = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 24, color: AppColors.blue1);
  static final header32 = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 32, color: AppColors.blue1);
}
