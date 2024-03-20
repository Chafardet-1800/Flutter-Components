import 'package:flutter/material.dart';
import 'package:flutter_components_test/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 300;

  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Center(
          child: Text('Sliders & Checks'),
        ),
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
      body: Column(
         children: [
      
            Slider.adaptive(
              min: 200,
              max: 500,
              activeColor: AppTheme.primary,
              // divisions: 10,
              value: _sliderValue, 
              onChanged: _sliderEnable 
              ? (value) { 
                  _sliderValue = value;
                  setState(() {});
                }
              : null
            ),

            // Checkbox(
            //   value: _sliderEnable, 
            //   onChanged: (value) {
            //     _sliderEnable = value ?? true;
            //     setState(() {});
            //   }
            // ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnable, 
              onChanged:  (value) => setState(() {_sliderEnable = value ?? true;})
            ),

            // Switch(
            //   value: _sliderEnable,
            //   onChanged: (value) => setState(() {_sliderEnable = value;})
            // ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnable, 
              onChanged: (value) => setState(() {_sliderEnable = value;})
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://purepng.com/public/uploads/thumbnail/purepng.com-arkham-batmanbatmansuperherocomicdc-comicsbob-kanebat-manbruce-wayne-17015285237506tx9y.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
      
         ],
      ),
    );
  }
}