import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red.shade500,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void randomize() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          randomize();
        },
      ),
    );
  }
}
