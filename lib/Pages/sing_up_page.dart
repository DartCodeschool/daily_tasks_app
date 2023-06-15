import 'package:daily_tasks_app/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/sigh_up_page.widgets.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
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
            const Text('Welcome Onboard!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 40),
            Text(bodyText2, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
            const SizedBox(height: 50),
            const Rectangle(txt: 'Enter your name'),
            const SizedBox(height: 30),
            const Rectangle(txt: 'Enter you e-mail'),
            const SizedBox(height: 30),
            const Rectangle(txt: 'Enter your password'),
            const SizedBox(height: 30),
            const Rectangle(txt: 'Confirm your password'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(325, 56)),
                  maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF008EC3)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
                ),
                child: const Text('Sing Up', style: TextStyle(fontSize: 24)),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have Account ?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'singIn_page');
                  },
                  child: const Text(
                    ' Sign In!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC4)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
