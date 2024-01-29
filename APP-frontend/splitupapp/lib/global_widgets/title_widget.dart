import 'package:flutter/material.dart';
import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/themes/text_theme.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 16, horizontal: GlobalConstants.screenPadding),
      child: Text(
        title,
        style: AppTextStyle.title.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
