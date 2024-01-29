import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splitupapp/features/dashboard/home_screen.dart';
import 'package:splitupapp/features/onboarding/onboard/content1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MaterialApp(
                  home: StreamBuilder(
                      stream: FirebaseAuth.instance.authStateChanges(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else {
                          return snapshot.hasData
                              ? const HomeScreen()
                              : const AppContentscreen1();
                        }
                      }),
                ))));
    return Material(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 112, 131, 157),
        body: Center(
          child: Image.asset(
            'assets/logo.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
