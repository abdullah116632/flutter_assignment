import 'package:flutter/material.dart';

class LiveExamHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Employe",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            TextFormField(decoration: const InputDecoration(hintText: "Name")),
            TextFormField(decoration: const InputDecoration(hintText: "Age")),
            TextFormField(
              decoration: const InputDecoration(hintText: "Salary"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("pressed");
              },
              child: Text("Add Employee"),
            ),
          ],
        ),
      ),
    );
  }
}