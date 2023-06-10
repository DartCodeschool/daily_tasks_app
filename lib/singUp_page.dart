import 'package:flutter/material.dart';

class SingUp_page extends StatefulWidget {
  const SingUp_page({super.key});

  @override
  State<SingUp_page> createState() => _SingUp_pageState();
}

class _SingUp_pageState extends State<SingUp_page> {
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
                'Welcome Onboard!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'roboto'),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 74, top: 25),
              child: Text(
                """ Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit.""",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const Rectangle(txt: 'Enter your name'),
            SizedBox(
              height: 20,
            ),
            const Rectangle(txt: 'Enter you e-mail'),
            SizedBox(
              height: 20,
            ),
            const Rectangle(txt: 'Enter your password'),
            SizedBox(
              height: 20,
            ),
            const Rectangle(txt: 'Confirm your password'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'singIn_page');
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(325, 56)),
                  maximumSize: MaterialStatePropertyAll(
                    Size(325.0, 56.0),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.blue,
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                child: const Text(
                  'Sing Up',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have Account ?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  ' Sign In!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  final String txt;

  const Rectangle({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 45),
      width: 285,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(52)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 9, bottom: 10),
        child: Row(
          children: [
            Text(
              txt,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
