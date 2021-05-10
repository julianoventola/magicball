import 'package:flutter/material.dart';
import 'package:magicball/pages/magicball_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic ball App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MagicballPage(),
    );
  }
}
