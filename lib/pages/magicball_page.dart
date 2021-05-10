import 'dart:math';

import 'package:flutter/material.dart';

class MagicballPage extends StatefulWidget {
  MagicballPage({Key? key}) : super(key: key);

  @override
  _MagicballPageState createState() => _MagicballPageState();
}

class _MagicballPageState extends State<MagicballPage> {
  var _ballState = 1;
  var _responseCounter = 0;

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.delete_forever),
        onPressed: () {
          setState(() {
            _responseCounter = 0;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Answers go back to zero✨'),
              duration: Duration(milliseconds: 1300),
            ));
          });
        },
      ),
      backgroundColor: Colors.blue[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Question answered: $_responseCounter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _ballState = Random().nextInt(5) + 1;
                _responseCounter += 1;
              });
            },
            child: Image.asset('images/ball$_ballState.png'),
          ),
        ],
      ),
    );
  }
}
