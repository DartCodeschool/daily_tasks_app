import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final String txt;

  const Rectangle({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: 285,
      height: 40,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(52))),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: txt,
          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey, height: 1.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(52),
          ),
        ),
      ),
    );
  }
}
