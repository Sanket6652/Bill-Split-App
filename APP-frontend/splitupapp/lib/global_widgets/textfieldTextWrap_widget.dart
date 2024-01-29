import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/themes/text_theme.dart';
import 'package:splitupapp/utils/responsive_layout.dart';

class TextFieldWrapper extends StatelessWidget {
  const TextFieldWrapper({
    super.key,
    required this.child,
    required this.width,
    this.padding = GlobalConstants.screenPadding,
    required this.title,
  });

  final String title;
  final Widget child;
  final double width;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyle.small,
        ),
        //const VSpace(h: 3),
        Container(
          alignment: Alignment.centerLeft,
          height: Responsive.width(context, GlobalConstants.textBoxHeight),
          width: Responsive.width(context, width),
          padding: EdgeInsets.only(left: padding),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.backgroundGreyColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(GlobalConstants.cardRadius / 2),
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}
