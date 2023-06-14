import 'package:flutter/material.dart';

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
        body: ListView(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assents/shape.png', height: 160, width: 230, fit: BoxFit.fitWidth,),
              const Padding(
                padding: EdgeInsets.only(left: 82, top: 50, right: 78),
                child: Text('Forgot your password?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 63, 61, 86)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74, top: 20, ),
                child: Image.asset('assents/forget.png', height: 250, width: 220, fit: BoxFit.fitHeight),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  width: 285,
                  height: 40,
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Enter your e-mail',
                      hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 132, 132, 132)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(52)),
                      )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 40),
                child: ElevatedButton(
                  onPressed: () {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'singIn_page');
                  }, 
                  child: Text('Sign In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 0, 142, 195)),),
                  ),
                ],
              ),
            ],
          ),
         ],
        ),
      ),
    );
  }
}