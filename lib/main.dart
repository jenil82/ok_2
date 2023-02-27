import 'package:flutter/material.dart';
import 'data.dart';
import 'hom.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        'detail': (context) => Detail(),
      },
    ),
  );
}