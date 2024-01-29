import 'dart:io';
import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/themes/text_theme.dart';
import 'package:splitupapp/utils/responsive_layout.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.btnText,
    required this.onTap,
    this.horizontalMargin = true,
    this.height = 1,
    required this.color, required this.btnbackground,
  });
  final String btnText;
  final VoidCallback onTap;
  final bool horizontalMargin;
  final bool btnbackground;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Responsive.width(context, 1),
      margin: Platform.isIOS
          ? const EdgeInsets.only(bottom: 20)
          : horizontalMargin
              ? const EdgeInsets.symmetric(horizontal: 5)
              : null,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          splashColor: AppColors.backgroundColor.withOpacity(.5),
          onTap: () {
            onTap();
          },
          child: Container(
            height: Responsive.width(
                context, GlobalConstants.fullWidthBtnHeight * height),
            padding: const EdgeInsets.symmetric(
                horizontal: GlobalConstants.screenPadding),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  btnText,
                  style: btnbackground
                     ?AppTextStyle.secbutton
                     : AppTextStyle.button,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
