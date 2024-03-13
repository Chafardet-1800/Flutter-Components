import 'package:flutter/material.dart';

class ListviewBaseScreen extends StatelessWidget {
  
  final optionList = const ['Opcion 1', 'Opcion 2', 'Opcion 3', 'Opcion 4', 'Opcion 5', 'Opcion 6', 'Opcion 7'];
   
  const ListviewBaseScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('List'),
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
      body: ListView(
        children: [

          ...optionList.map((option) => (
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_sharp),
              title: Text(option),
            )
          )).toList()

        ],
      )
    );
  }
}