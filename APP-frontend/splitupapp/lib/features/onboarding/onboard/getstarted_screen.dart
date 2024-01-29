import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/global_widgets/primary_button.dart';
import 'package:splitupapp/themes/text_theme.dart';
import 'package:splitupapp/utils/responsive_layout.dart';
import 'package:splitupapp/features/auth/signup_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              "Easily add & Keep Track\n   of all your expenses",
              style:
                  AppTextStyle.big.copyWith(color: AppColors.backgroundColor),
            )),
            SizedBox(
                height: Responsive.height(context, .6),
                child: Image.asset('assets/content1.png')),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: PrimaryButton(
                btnText: 'Get Started',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SignUpScreen()));
                },
                horizontalMargin: true,
                color: AppColors.blue,
                btnbackground: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
