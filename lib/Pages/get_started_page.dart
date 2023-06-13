import 'package:flutter/material.dart';

import '../constant.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assents/shape.png', height: 160, width: 230, fit: BoxFit.fitWidth),
          Padding(
            padding: const EdgeInsets.only(left: 94, top: 20),
            child: Image.asset('assents/rasm.png', height: 200, width: 200),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 81, top: 50),
            child: Text('Get things done with Todo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 78, top: 30),
            child: Text(bodyText, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromARGB(127, 0, 0, 0))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'singUp_page');
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(320, 50)),
                // maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 24)),
            ),
          ),
        ],
      ),
    );
  }
}
