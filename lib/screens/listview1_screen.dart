import 'package:flutter/material.dart';

class listview1Screen extends StatelessWidget {
  final lista = const ['Minicake', 'Torta 3 leches', 'Palet'];

  const listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Postres de la semana'),
        ),
        body: ListView(
          children: [
            
            ...lista.map(
              (e) => 
              ListTile( title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )
              ).toList(), 
          ],
        ));
  }
}
