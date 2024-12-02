// ภูวกร รุ่งปิติศุภากร 1155
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
            'Strawberry Pavlova',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFFFA2334), // AppBar background color
        ),
        body: Container(
          color: Color(0xFFF9F9F9), // Screen background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                Image.network(
                  'https://i2.pickpik.com/photos/963/237/98/mixed-berries-pavlova-pie-cake-preview.jpg',
                  height: 200,
                ),
                SizedBox(height: 20),
                // Description
                Text(
                  'Strawberry Pavlova',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[100],
                  child: Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ),

                SizedBox(height: 20),
                // Additional information
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFFA2334)), // Red border
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20), // Space
                      // Stars Rating Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: Color(0xFFFFCC33),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "170 Reviews",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // PREP, COOK, and FEEDS Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // PREP
                          Column(
                            children: [
                              Icon(Icons.kitchen, color: Color(0xFF29CFC5)),
                              SizedBox(height: 5),
                              Text(
                                'PREP:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '25 min',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          // COOK
                          Column(
                            children: [
                              Icon(Icons.timer, color: Color(0xFF29CFC5)),
                              SizedBox(height: 5),
                              Text(
                                'COOK:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1 hr',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          // FEEDS
                          Column(
                            children: [
                              Icon(Icons.restaurant, color: Color(0xFF29CFC5)),
                              SizedBox(height: 5),
                              Text(
                                'FEEDS:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '4-6',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
