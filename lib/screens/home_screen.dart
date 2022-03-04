import 'package:componentes_leccion/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final puntero = AppRoute.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(puntero[index].name),
                  leading: Icon(puntero[index].icon),
                  onTap: () {
                    /* final route = MaterialPageRoute(
                        builder: (context) => const listview1Screen());

                    Navigator.push(context, route); */

                    Navigator.pushNamed(context, puntero[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoute.menuOptions.length));
  }
}
