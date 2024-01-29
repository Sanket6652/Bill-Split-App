import 'package:flutter/material.dart';
import 'package:splitupapp/constant/colors.dart';
import 'package:splitupapp/controller/onboarding_controller.dart';
import 'package:splitupapp/global_widgets/primary_button.dart';
import 'package:splitupapp/global_widgets/textfieldTextWrap_widget.dart';
import 'package:splitupapp/themes/text_theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final OnboardingController authController = OnboardingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Join Split Up",
            style: AppTextStyle.screenHeading,
          ),
          Row(
            children: [
             
              TextFieldWrapper(
                  title: "Email adderess",
                  width: 555550,
                  child: TextField(
                    controller: authController.phoneController.value,
                    decoration: const InputDecoration.collapsed(hintText: "Phone Number"),
                  )),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: PrimaryButton(
              btnText: 'Login',
              onTap: () {
                authController.signInWithPhoneNumber();
              },
              color: AppColors.blue,
              btnbackground: false,
            ),
          )
        ]),
      ),
    );
  }
}
