import 'package:flutter/material.dart';

class MyNewscroll extends StatelessWidget {
  const MyNewscroll({super.key});

  // สร้างฟังก์ชัน boxContainer เพื่อสร้าง Container แต่ละตัว
  Widget boxContainer(String text) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 120,
      height: 100,
      color: const Color.fromARGB(255, 147, 173, 218),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 240, 40, 40),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView'), // แก้ไขเป็น ScrollView แทน ScollView
        centerTitle: true, // ทำให้ชื่ออยู่ตรงกลาง
        backgroundColor: Colors.blueAccent, // เปลี่ยนสีพื้นหลังของ AppBar
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // เลื่อนในแนวนอน
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Row(
            children: [
              boxContainer('One'),
              boxContainer('Two'),
              boxContainer('Three'),
              boxContainer('Four'),
              boxContainer('Five'),
              boxContainer('Six'),
              boxContainer('Seven'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyNewscroll(),
  ));
}