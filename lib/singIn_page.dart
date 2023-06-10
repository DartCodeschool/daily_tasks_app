import 'package:flutter/material.dart';

class SingIn_page extends StatefulWidget {
  const SingIn_page({super.key});

  @override
  State<SingIn_page> createState() => _SingIn_pageState();
}

class _SingIn_pageState extends State<SingIn_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F0F0),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assents/shape.png',
              height: 200,
              width: 270,
              fit: BoxFit.fitWidth,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 81, top: 40),
              child: Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'roboto'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 94, top: 20),
              child: Image.asset(
                'assents/Slice 2.png',
                height: 200,
                width: 200,
                //fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
