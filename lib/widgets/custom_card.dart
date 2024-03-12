import 'package:flutter/material.dart';
import 'package:flutter_components_test/theme/app_theme.dart';

class CustomCard extends StatelessWidget {

  final IconData icon;

  final String title;

  final String? subtitle;


  const CustomCard({
    super.key,
    required this.icon, 
    required this.title, 
    this.subtitle = '', 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
      
            ListTile(
              leading: Icon(
                icon,
                color: AppTheme.primary,
              ),
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 24
                )
              ),
              subtitle: Text(subtitle!),
            ),
      
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: const Text('Ok')
                  ),
                ],
              ),
            )
      
          ],
        )
      );
  }
}