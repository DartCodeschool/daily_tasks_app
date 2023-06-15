import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/forget_password_widgets.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F0F0),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'assents/shape.png',
                  width: 200,
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text('Forgot your password?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 63, 61, 86))),
            const SizedBox(height: 40),
            SvgPicture.asset('assents/photo.svg', height: 200, width: 200),
            //const SizedBox(height: 40),
            const Rectangle(txt: 'Enter your e-mail'),
            // const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'resent_password');
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(325, 56)),
                  maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF008EC3)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
                ),
                child: const Text('Reset Password', style: TextStyle(fontSize: 24)),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'singIn_page');
                },
                child: const Text(' Sign In!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC4)))),
          ],
        ),
      ),
    );
  }
}
