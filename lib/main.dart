import 'package:flutter/material.dart';

import 'package:flutter_components_test/router/app_routes.dart';
import 'package:flutter_components_test/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoutes,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGeneralRoute,
      theme: AppTheme.ligthTheme
    );
  }
}