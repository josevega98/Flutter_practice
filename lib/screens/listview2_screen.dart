import 'package:flutter/material.dart';

class listview2Screen extends StatelessWidget {
  final lista = const [
    'Minicake',
    'Torta 3 leches',
    'Jars',
    'Trufas',
    'Brownies',
    'Tortas en fondan',
    'Tortas Clasicas'
  ];

  const listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Postres de la semana Lista 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(lista[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  final game = lista[index];
                  print(game);
                },
              );
            }, //(context, index) => Text(lista[index]),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: lista.length));
  }
}