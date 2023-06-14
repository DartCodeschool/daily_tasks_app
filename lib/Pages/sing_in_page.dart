import 'package:flutter/material.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  bool iswitch = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F0F0),
        body: ListView(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset('assents/shape.png', width: 200),
                ],
              ),
              const SizedBox(height: 30),
              const Text('Welcome Back!', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'roboto')),
              //const SizedBox(height: 36),
              Image.asset('assents/Slice 2.png', height: 200, width: 200),
              const SizedBox(height: 36),
              const Rectangle(txt: 'Enter your e-mail'),
              const SizedBox(height: 30),
              const Rectangle(txt: 'Enter your password'),
              const SizedBox(height: 10),
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'forget_password');
                }, 
                child: Text('Forgot your password? ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC3))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'daily_tasks');
                  },
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(325, 56)),
                    maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                    backgroundColor: MaterialStatePropertyAll(Color(0xFF008EC3)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
                  ),
                  child: const Text('Sing In', style: TextStyle(fontSize: 24)),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have Account ?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  Text(
                    ' Sign In!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC4)),
                  )
                ],
              )
            ],
          ),
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
      margin: const EdgeInsets.only(left: 15),
      width: 285,
      height: 40,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(52))),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: txt,
          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(52),
          ),
        ),
      ),
    );
  }
}
