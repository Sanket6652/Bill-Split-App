import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/global_widgets/primary_button.dart';
import 'package:splitupapp/themes/text_theme.dart';
import 'package:splitupapp/utils/responsive_layout.dart';
import 'package:splitupapp/features/onboarding/onboard/conten2.dart';

class AppContentscreen1 extends StatelessWidget {
  const AppContentscreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(GlobalConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/logo.png',
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Easily Split Bills with\n    friends & family",
              style:
                  AppTextStyle.big.copyWith(color: AppColors.backgroundColor),
            )),
            SizedBox(
                height: Responsive.height(context, .6),
                child: Image.asset('assets/content1.png')),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: PrimaryButton(
                btnText: 'Next',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AppContentscreen2()));
                },
                horizontalMargin: true,
                color: AppColors.blue,
                btnbackground: false,
              ),
            ),
            PrimaryButton(
              btnText: 'Skip',
              onTap: () {},
              horizontalMargin: true,
              color: AppColors.white,
              btnbackground: true,
            )
          ],
        ),
      ),
    );
  }
}
