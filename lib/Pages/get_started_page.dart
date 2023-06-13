import 'package:daily_tasks_app/constant.dart';
import 'package:flutter/material.dart';

// import '../constant.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            Image.asset('assents/rasm.png', height: 200, width: 200),
            const SizedBox(height: 53),
            const Text('Get things done with Todo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF3F3D56))),
            const SizedBox(height: 30),
            Text(bodyText, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromARGB(127, 0, 0, 0))),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'singUp_page');
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(320, 50)),
                maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                backgroundColor: MaterialStatePropertyAll(Color(0xFF008EC3)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
