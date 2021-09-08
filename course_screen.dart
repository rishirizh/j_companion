import 'package:flutter/material.dart';
import 'package:j_companion/coming_soon_screen.dart';
import 'lesson_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('J Companion'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CourseButton(
                courseName: 'N1',
                moduleNumber: 1,
              ),
              CourseButton(
                courseName: 'N2',
                moduleNumber: 2,
              ),
              CourseButton(
                courseName: 'N3',
                moduleNumber: 3,
              ),
              CourseButton(
                courseName: 'N4',
                moduleNumber: 4,
              ),
              CourseButton(
                courseName: 'N5',
                moduleNumber: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CourseButton extends StatelessWidget {
  final String courseName;
  final int moduleNumber;

  CourseButton({
    required this.courseName,
    required this.moduleNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ElevatedButton(
          child: Text(
            courseName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            if (moduleNumber > 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Lessons(
                    moduleNumber: moduleNumber,
                  );
                }),
              );
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ComingSoon();
              }));
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue,
            elevation: 40.0,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
