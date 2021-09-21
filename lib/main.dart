import 'package:flutter/material.dart';
import 'package:gallery/pages/home.dart';
import 'package:gallery/pages/gallery.dart';
import 'package:gallery/pages/disco.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/gallery': (context) => Gallery(),
    '/disco' : (context) => Disco(),
  },
));