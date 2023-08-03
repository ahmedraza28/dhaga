import 'package:dhaga/home.dart';
import 'package:dhaga/Onboarding/otp.dart';
import 'package:dhaga/Onboarding/personalInfo.dart';
import 'package:dhaga/Onboarding/projectInfo.dart';
import 'package:dhaga/Onboarding/setPassword.dart';
import 'package:dhaga/Onboarding/signIn.dart';
import 'package:dhaga/Onboarding/signUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signIn',
    routes: {
      'signIn': (context) => const MySignIn(),
      'signUp': (context) => const MySignUp(),
      'otp': (context) => const MyOtp(),
      'setPassword': (context) => const MySetPassword(),
      'personalInfo': (context) => const MyPersonalInfo(),
      'projectInfo': (context) => const MyProjectInfo(),
      'home': (context) => const MyHome(),
    },
  ));
}
