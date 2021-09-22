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

  void timerFunc(int speed) {
    Timer.periodic(Duration(milliseconds: speed), (timer) { 
            if(party == false) {
              timer.cancel();
            } else {
            changeColor();
            }
          });
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
          if(party == false) {
            party = true;
            timerFunc(150);
          } else {
            party = false;
          }
        },
        backgroundColor: bgColors[cuColor],
        child: Icon(Icons.light),
      ),

      backgroundColor: bgColors[cuColor],
    );
  }
}