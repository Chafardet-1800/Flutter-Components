import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 70;
  double _heigth = 70;
  MaterialColor _color = Colors.purple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  bool _changed = false;

  void changeShape () {

    if(_changed) {

      _borderRadius = BorderRadius.circular(10);
      _width = 70;
      _heigth = 70;
      _color = Colors.purple;
      _changed = false;

    }
    else {

      final rnd = Random().nextInt(300).toDouble() + 70;

      _borderRadius = BorderRadius.circular(50);
      _width = rnd;
      _heigth = rnd;
      _color = Colors.blue;
      _changed = true;

    }

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.purple[900],
              foregroundColor: Colors.white,
              child: const Text('AC'),
            ),
          )
        ], 
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}