import 'package:flutter/material.dart';
import 'content_showing_screen.dart';

class ReusableContainer extends StatelessWidget {
  final int moduleNumber;
  final int lessonNumber;
  ReusableContainer({required this.moduleNumber, required this.lessonNumber});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: GestureDetector(
            onTap: () {
              print(moduleNumber);
              print(lessonNumber);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Contents(
                    moduleNumber: moduleNumber,
                    lessonNumber: lessonNumber,
                  );
                }),
              );
            },
            child: Container(
              margin: EdgeInsets.all(6),
              height: 50,
              width: 600,
              child: Center(
                  child: Text(
                'Lesson - $lessonNumber',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
