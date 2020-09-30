import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Center(child: Text('Игра в кости')),
          backgroundColor: Colors.blue[900],
        ),
        body: MyBody(),
      ),
    ),
  );
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  var leftNum = 1;
  var rightNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/$leftNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/$rightNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
