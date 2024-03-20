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
  Color _color = Colors.purple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape () {

      final rnd = Random().nextInt(300).toDouble() + 70;

      _borderRadius = BorderRadius.circular(Random().nextInt(100).toDouble());
      _width = rnd;
      _heigth = rnd;
      _color = Color.fromRGBO(
        Random().nextInt(250), 
        Random().nextInt(250), 
        Random().nextInt(250), 
        1
      );

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
         child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ), 
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutBack,
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}