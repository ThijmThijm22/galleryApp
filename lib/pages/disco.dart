import 'package:flutter/material.dart';
import 'dart:async';


class Disco extends StatefulWidget {

  @override
  _DiscoState createState() => _DiscoState();
}

class _DiscoState extends State<Disco> {
  bool party = false;

  int cuColor = 0;

  List<Color> bgColors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.purple,
    Colors.pink
  ];

  void changeColor() {
    if(cuColor < 5) {
            setState(() {
              cuColor++;
            });
          } else {
            setState(() {
              cuColor = 0;
            });
          }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColors[cuColor],
        title: Text('Disco'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: bgColors[cuColor],
        child: Icon(Icons.light),
      ),

      backgroundColor: bgColors[cuColor],
    );
  }
}