 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

final int x=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),),
        body:SafeArea(
          child: Column(
            children: [
              Text(x.toString(),style: TextStyle(fontSize: 50),)
              ],
          ),
          ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
             print('tab');
            },
            child: Icon(Icons.add),
        ),
      ),
    );
  }
}
