import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialAppExam(),
    );
  }
}

class MaterialAppExam extends StatefulWidget {
  const MaterialAppExam({Key? key});

  @override
  State<MaterialAppExam> createState() => _MaterialAppExamState();
}

class _MaterialAppExamState extends State<MaterialAppExam> {
  var dice = 2;

  void rolldice() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 65, 5, 120),
              Color.fromARGB(230, 100, 70, 90),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/dice-$dice.png', width: 200),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: rolldice,
                child: Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
