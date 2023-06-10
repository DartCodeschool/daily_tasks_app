import 'package:flutter/material.dart';
//import 'package:sing/getStarted_page.dart';
import 'getStarted_page.dart';
import 'singUp_page.dart';
import 'singIn_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'getStarted_page',
      routes: {
        'getStarted_page': (context) {
          return GetStarted_page();
        },
        'singUp_page': (context) {
          return SingUp_page();
        },
        'singIn_page': (context) {
          return SingIn_page();
        }
      },
    ),
  );
}
