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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assents/shape.png', height: 160, width: 230, fit: BoxFit.fitWidth),
            const Padding(
              padding: EdgeInsets.only(left: 81, top: 40),
              child: Text('Welcome Back!', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'roboto')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 94, top: 20),
              child: Image.asset('assents/Slice 2.png', height: 200, width: 200),
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              height: 40,
              width: 285,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(52)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 12, top: 13, bottom: 13, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Enter your e-mail', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),),
                    Switch(
                    value: iswitch, 
                    onChanged: (value){
                      setState(() {
                        iswitch = value;
                      });
                    },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 45),
              height: 40,
              width: 285,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(52)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 12, top: 13, bottom: 13),
                child: Text('Enter your password', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'forget_password');
                  }, 
                  child: const Text('Forgot your password?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 0, 142, 195)),)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(325, 56)),
                  maximumSize: MaterialStatePropertyAll(Size(325.0, 56.0)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),
                ),
                child: const Text('Sing In', style: TextStyle(fontSize: 24)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),),
                  SizedBox(width: 2),
                  TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'singUp_page');
                  }, 
                  child: Text('Sign In!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 0, 142, 195)),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}