import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/global_widgets/primary_button.dart';
import 'package:splitupapp/themes/text_theme.dart';
import 'package:splitupapp/utils/responsive_layout.dart';
import 'package:splitupapp/features/onboarding/onboard/getstarted_screen.dart';

class AppContentscreen2 extends StatelessWidget {
  const AppContentscreen2({super.key});

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
              height: 80,
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
              "Create Groups and add\n         friends & family",
              style:
                  AppTextStyle.big.copyWith(color: AppColors.backgroundColor),
            )),
            SizedBox(
                height: Responsive.height(context, .5),
                child: Image.asset('assets/content2.png')),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: PrimaryButton(
                btnText: 'Next',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const GetStarted()));
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
