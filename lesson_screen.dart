import 'package:flutter/material.dart';
import 'package:j_companion/reusable_container.dart';

class Lessons extends StatelessWidget {
  final int moduleNumber;
  Lessons({required this.moduleNumber});

  @override
  Widget build(BuildContext context) {
    late int start, end;
    List<Widget> lessonList = [];
    if (moduleNumber < 4) {
      // Navigator.push(context, MaterialPageRoute(builder: (context) {
      //   return ComingSoon();
      // }));
      lessonList = [];
    } else if (moduleNumber == 4) {
      start = 26;
      end = 50;
    } else {
      start = 1;
      end = 25;
    }
    for (int i = start; i <= end; i++) {
      lessonList.add(ReusableContainer(
        moduleNumber: moduleNumber,
        lessonNumber: i,
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Module - $moduleNumber'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: lessonList,
      ),
    );
  }
}
