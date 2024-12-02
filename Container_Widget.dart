import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Container Widget',
            style: TextStyle(color: Color(0xFFFEFEFE)),
          ),
          backgroundColor: Color(0xFF231F20), // AppBar background color
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // No Decoration
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.grey[300],
               child: Text('No Decoration', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF344D4D)),
              ),
              ),

              // Circular
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Circular(30)', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF344D4D)),
              ),
              ),

              // Circular Border (Circle)
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF00A671), width: 5),
                ),
                child: Text('Circle', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF344D4D)), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}