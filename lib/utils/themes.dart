import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

var theme = ThemeData( 
   colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondaryColor),
   useMaterial3: true, 
   textTheme: TextTheme(
    bodyMedium:GoogleFonts.poppins(color: AppColors.fourthColor ,
    fontSize: Get.width*0.047,
    fontWeight: FontWeight.normal) ,
    bodySmall:GoogleFonts.poppins(color: AppColors.fourthColor ,
    fontSize: Get.width*0.037,
    fontWeight: FontWeight.normal)


   )
);