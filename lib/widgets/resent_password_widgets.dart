import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ans = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      side: const BorderSide(width: 1),
      title: Text(widget.txt, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF6A6A6B))),
      value: ans,
      onChanged: (v) {
        setState(() {
          ans = v!;
        });
      },
    );
  }
}

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  bool ans = false;
  void f(value) {
    setState(() {
      ans = !ans;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 310,
        width: 340,
        margin: const EdgeInsets.only(left: 25, top: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Daily Tasks',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),
            ),
            CustomCheckBox(txt: 'Learn how to make mobile UI by 11am  '),
            CustomCheckBox(txt: 'Search how is UX works by 2pm'),
            CustomCheckBox(txt: 'Do your sport by 6pm'),
            CustomCheckBox(txt: 'Have lunch by 9pm'),
            CustomCheckBox(txt: 'Go to sleep by 1am')
          ]),
        ));
  }
}
