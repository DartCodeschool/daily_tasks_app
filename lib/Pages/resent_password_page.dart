import 'package:flutter/material.dart';

import '../widgets/resent_password_widgets.dart';
//import 'package:flutter_svg/svg.dart';

class RessentPassword extends StatefulWidget {
  const RessentPassword({super.key});

  @override
  State<RessentPassword> createState() => _RessentPasswordState();
}

class _RessentPasswordState extends State<RessentPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 226, 226),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 265,
              width: 393,
              color: const Color(0xFF008EC3),
              child: Stack(
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assents/shape.png', width: 200),
                    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 90, left: 100),
                        child: Image.asset('assents/indir 1.png', height: 100, width: 100, fit: BoxFit.fitHeight),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6, left: 90),
                        child: Text(
                          'Welcome back, Ozer!',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'singIn_page');
                          },
                          child: const Padding(
                              padding: EdgeInsets.only(left: 90),
                              child: Text(
                                'Logout',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF63D4FF)),
                              )))
                    ])
                  ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 110),
                child: Image.asset('assents/clock.png', height: 100, width: 100),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23, bottom: 50),
                child: Text(
                  'Good afternoon',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 22),
            child: Text(
              'Tasks List',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),
            ),
          ),
          const Rectangle(),
        ]),
      ),
    );
  }
}
