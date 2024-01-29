import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';

class AppTextStyle {
  static const TextStyle big = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const TextStyle screenHeading = TextStyle(
   fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color:AppColors.blue
  );

  static const TextStyle title = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.darkSubTextColor,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static const TextStyle secondaryBody = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.darkSubTextColor,
  );

  static const TextStyle button = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static const TextStyle secbutton = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle small = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );
}
