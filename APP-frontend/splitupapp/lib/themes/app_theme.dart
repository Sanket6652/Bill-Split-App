import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(color:AppColors.primaryColor),
   // primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: "Poppins",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: AppColors.disabledColor,
    //useMaterial3: true,
  );
}
