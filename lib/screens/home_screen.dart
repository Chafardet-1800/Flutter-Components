import 'package:flutter/material.dart';

import 'package:flutter_components_test/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        title: const Center(
          child: Text('Componentes de flutter'),
        ),
      ),

      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].name),
          leading: Icon(
            AppRoutes.menuOptions[index].icon,
          ),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),

    );
  }
}