import 'package:componentes_leccion/models/models.dart';
import 'package:flutter/material.dart';
import 'package:componentes_leccion/screens/screens.dart';

class AppRoute {
  static const initialRoute ='home';

  static final menuOptions = <MenuOptions>[
    //TODO: BORRAR HOME

    // puntero [index = 0 ].name

    /* MenuOptions(
        route:'home',
        name:'Trufas',
        screen: const HomeScreen(),
        icon: Icons.account_balance), */

    MenuOptions(
        route:'listview1',
        name:'Jars de brownie',
        screen: const listview1Screen(),
        icon: Icons.ad_units_sharp),

    MenuOptions(
        route:'listview2',
        name:'Mini cakes',
        screen: const listview2Screen(),
        icon: Icons.add_box_outlined),

    MenuOptions(
        route:'cardscreen',
        name:'Cupcakes personalizados y clásico',
        screen: const CardScreen(),
        icon: Icons.cabin_sharp),

    MenuOptions(
        route:'alertscreen',
        name:'Muffins',
        screen: const AlertScreen(),
        icon: Icons.gps_fixed_sharp),
      MenuOptions(
        route:'AvatarScreen',
        name:'Avatares',
        screen: const AvatarScreen(),
        icon: Icons.person_add),
      MenuOptions(
        route:'AnimacionScreen',
        name:'Animacion',
        screen: const ConteinerScreen(),
        icon: Icons.animation),

      MenuOptions(
        route:'Inputs',
        name:'Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    
    // 'home' : (BuildContext context) => const HomeScreen(),
    
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home'        : (BuildContext context) => const HomeScreen(),
    'listview1'   : (BuildContext context) => const listview1Screen(),
    'listview2'   : (BuildContext context) => const listview2Screen(),
    'cardscreen'  : (BuildContext context) => const CardScreen(),
    'alertscreen' : (BuildContext context) => const AlertScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
