import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using Container'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container1(), // เรียกใช้ Container1
            Container2(), // เรียกใช้ Container2
            Container3(), // เรียกใช้ Container3
          ],
        ),
      ),
    );
  }

  // Container1 ที่มีข้อความ 'My Container'
  Widget Container1() => Container(
        height: 200,
        width: 300,
        color: Colors.amber[900],
        child: const Center(
          child: Text(
            'My Container',
            style: TextStyle(
              color: Color.fromARGB(255, 244, 247, 234),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  // Container2 ที่มีข้อความ 'I'm rich man!'
  Widget Container2() => Container(
        height: 55,
        width: 300,
        margin: const EdgeInsets.all(40),
        color: const Color.fromARGB(255, 111, 162, 252),
        child: const Center(
          child: Text(
            "I'm rich man!",
            style: TextStyle(
              color: Color.fromARGB(255, 200, 214, 208),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}

// Container3 ที่มีข้อความ 'LOVE' และมีการใช้ BoxDecoration
Widget Container3() => Container(
  height: 55,
  width: 300,
  margin: const EdgeInsets.all(40),
  padding: const EdgeInsets.only(top: 20, left: 10),
  color: const Color.fromARGB(255, 90, 132, 204),
  decoration: BoxDecoration(
    color: Colors.black38,
    border: Border.all(
      color: const Color.fromARGB(255, 248, 243, 197),
      style: BorderStyle.solid,
    ),
    borderRadius: const BorderRadius.all(
      Radius.elliptical(50, 30), // แนวนอน 50, แนวตั้ง 30
    ),
  ),
  child: const Center(
    child: Text(
      "LOVE",
      style: TextStyle(
        color: Color.fromARGB(249, 236, 222, 203),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);


void main() {
  runApp(MaterialApp(
    home: MyContainer(),
  ));
}