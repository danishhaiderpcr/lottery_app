import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 4')),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: x == 4 ? 100 : 250,
                width: 300,
                decoration: BoxDecoration(
                  color: x == 4
                      ? Colors.greenAccent
                      : Colors.grey.withValues(alpha: 200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.done, color: Colors.green, size: 35),
                          SizedBox(height: 15),
                          Text(
                            'congratulation you have won the lottery your number is  \n $x',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.error, color: Colors.red, size: 35),
                          SizedBox(height: 15),
                          Text(
                            'Batter luck next lnie your number is \n $x try again',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(x > 5 ? Icons.place : Icons.refresh),
        ),
      ),
    );
  }
}
