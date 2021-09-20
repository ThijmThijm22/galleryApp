import 'package:flutter/material.dart';
import 'package:gallery/pages/home.dart';
import 'package:gallery/pages/gallery.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/gallery': (context) => Gallery(),
  },
));