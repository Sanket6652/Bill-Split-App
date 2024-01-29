import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitupapp/services/network_service.dart';

class OnboardingController extends GetxController {
  late NetworkService networkService;
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

 Future<void> signInWithPhoneNumber() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: '+91${phoneController.value.text.trim()}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Verification failed: $e");
      },
      codeSent: (String verificationId, int? resendToken) {
        // Navigate to the OTP screen or auto-verify the code
        // using the verificationId and the user's input.
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
