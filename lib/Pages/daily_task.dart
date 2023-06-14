
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DailyTask extends StatefulWidget {
  const DailyTask({super.key});

  @override
  State<DailyTask> createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: ListView(
          children: [
            Column(
            children: [
              Container(
                height: 350,
                width: 400,
                color: Color.fromARGB(255, 0, 142, 195),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assents/shape.png'),
                    const Padding(
                      padding: EdgeInsets.only(left: 138, bottom: 30),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assents/indir.png'),
                        radius: 50,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 98),
                      child: Text('Welcome back, Ozer!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFFFFFFFF)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'singUp_page');
                        }, 
                        child: const Text('Logout', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF63D4FF)),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, top: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assents/Ellipse.svg'),
                    const SizedBox(width: 15,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 80),
                      child: Text('Good afternoon', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 22, right: 250),
                child: Text('Tasks List', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  height: 267,
                  width: 327,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 21, top: 28, right: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Daily Tasks', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),),
                            Icon(
                              Icons.add_circle,
                              size: 20,
                              color: Color.fromARGB(255, 16, 188, 242),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
         ],
        ),
      ),
    );
  }
}

// class ListTasks extends StatefulWidget {
//   final String matn;

//   const ListTasks({
//     super.key,
//     required this.matn,
//     });

//   @override
//   State<ListTasks> createState() => _ListTasksState();
// }

// class _ListTasksState extends State<ListTasks> {
//   bool chek = false;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//           value: chek, 
//           onChanged: (value1) {
//             setState(() {
//               value1 != chek;
//             });
//          },
//         ),
//         Text('matn', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF848484)),)
//       ],
//     );
//   }
// }