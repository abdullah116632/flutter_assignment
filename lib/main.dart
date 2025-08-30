import 'package:flutter/material.dart';
import 'package:module_10_assignment/assignment.dart';
import 'package:module_10_assignment/liveExam.dart';

void main() {
  runApp(MyApp());
}

// Main App Class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // banner hide
      home: LiveExamHome(),
    );
  }
}

