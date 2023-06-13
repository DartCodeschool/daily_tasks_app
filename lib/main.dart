import 'package:flutter/material.dart';
import 'Pages/get_started_page.dart';
import 'Pages/sing_up_page.dart';
import 'Pages/sing_in_page.dart';
import 'Pages/forget_password_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'getStarted_page',
      routes: {
        'getStarted_page': (context) {
          return const GetStartedPage();
        },
        'singUp_page': (context) {
          return const SingUpPage();
        },
        'singIn_page': (context) {
          return const SingInPage();
        },
        'forget_password':(context) {
          return const ForgetPassword();
        }
      },
    ),
  );
}
