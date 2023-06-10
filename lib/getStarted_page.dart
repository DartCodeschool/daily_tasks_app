import 'package:flutter/material.dart';

class GetStarted_page extends StatefulWidget {
  const GetStarted_page({super.key});

  @override
  State<GetStarted_page> createState() => _GetStarted_pageState();
}

class _GetStarted_pageState extends State<GetStarted_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assents/shape.png',
            height: 200,
            width: 270,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 94, top: 20),
            child: Image.asset(
              'assents/rasm.png',
              height: 200,
              width: 200,
              //fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 81, top: 50),
            child: Text(
              'Get things done with Todo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 78, top: 30),
            child: Text(
              """Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit. Tortor 
    tristique enim ornare malesuada.
  Sapien sed turpis nullam nascetur at 
et. Vulputate urna interdum egestas id 
  molestie cum.
               """,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'singUp_page');
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(320, 50)),
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
                'Get Started',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
