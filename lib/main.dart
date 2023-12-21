import 'package:flutter/material.dart';
import 'package:miniblog/screens/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: const Homepage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
      useMaterial3: true,
    ),
  ));
}
