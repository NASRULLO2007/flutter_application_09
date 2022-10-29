
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(), 
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gradient",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black,
                    Color(0xff46aBae),
                    Color(0xff00ffcb),
                    Colors.red,
                    Colors.black,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black,
                  Color(0xff46a0ae),
                  Color(0xff00ffcb),
                  Colors.green,
                  Colors.red,
                  Colors.black,
                ],
              ),borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),

    );
  }
}
  
