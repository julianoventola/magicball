import 'package:flutter/material.dart';

class MagicballPage extends StatefulWidget {
  MagicballPage({Key? key}) : super(key: key);

  @override
  _MagicballPageState createState() => _MagicballPageState();
}

class _MagicballPageState extends State<MagicballPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      backgroundColor: Colors.blue[400],
      body: null,
    );
  }
}
