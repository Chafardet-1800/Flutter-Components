import 'package:flutter/material.dart';

import 'package:flutter_components_test/models/models.dart';
import 'package:flutter_components_test/screens/screens.dart';

class AppRoutes {

  static const initialRoutes = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: '/home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: '/listView', name: 'List View', screen: const ListviewScreen(), icon: Icons.list),
    MenuOption(route: '/alert', name: 'Alerts Screen', screen: const AlertScreen(), icon: Icons.mark_unread_chat_alt_outlined),
    MenuOption(route: '/cards', name: 'Cards Screen', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: '/avatar', name: 'Avatar Screen', screen: const AvatarScreen(), icon: Icons.person),
    MenuOption(route: '/animated', name: 'Animated Screen', screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ '/home' : (BuildContext context) => const HomeScreen() });
    
    for (final option in menuOptions) {
      
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });

    }

    return appRoutes;

  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       '/home'    : (BuildContext context)=> const HomeScreen(),
  //       '/listView': (BuildContext context)=> const ListviewScreen(),
  //       '/alert'   : (BuildContext context)=> const AlertScreen(),
  //       '/cards'   : (BuildContext context)=> const CardScreen(),
  //     };

  static Route<dynamic> onGeneralRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }

}