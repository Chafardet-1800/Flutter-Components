import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog (BuildContext context) {
    
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return  AlertDialog(
          title: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Text('Alerta'),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 30),
              FlutterLogo( size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('cancelar', style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Aceptar')
            ),
          ],
        );
      }
    );

  }
  
  void displayDialogIOS (BuildContext context) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Text('Alerta'),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 30),
              FlutterLogo( size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('cancelar', style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Aceptar')
            ),
          ],
        );
      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
                ? displayDialog(context)
                : displayDialogIOS(context), 
          child: const Padding(
            padding: EdgeInsets.all(8.0),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
              ),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
  }
  
}