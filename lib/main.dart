import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Main App Class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // banner hide
      home: Home(),
    );
  }
}

// Greeting Page
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. "Hello, World!" text with custom styling
            Text(
              "Hello, World!",
              style: TextStyle(
                color: Colors.red, // text color red
                fontWeight: FontWeight.bold, // bold
                fontSize: 28,
              ),
            ),

            SizedBox(height: 10),

            // 2. Another text below it
            Text(
              "Welcome to Flutter!",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            // 3. Add an image (optional)
            Image.network(
              "https://miro.medium.com/v2/resize:fit:1000/1*5-aoK8IBmXve5whBQM90GA.png",
              height: 100,
            ),

            SizedBox(height: 20),

            // 4. Button that shows snackbar
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // button color green
              ),
              onPressed: () {
                // Show snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Button Pressed!"),
                  ),
                );
              },
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
