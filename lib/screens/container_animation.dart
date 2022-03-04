import 'dart:math';

import 'package:flutter/material.dart';

class ConteinerScreen extends StatefulWidget {
  const ConteinerScreen({Key? key}) : super(key: key);

  @override
  State<ConteinerScreen> createState() => _ConteinerScreenState();
}

class _ConteinerScreenState extends State<ConteinerScreen> {
  double _height = 50;
  double _width = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _border = BorderRadius.circular(50);

  int color = 100;

  void cambiodefase() {
    final rnd = Random();
    _height = rnd.nextInt(300).toDouble() + 70;
    _width = rnd.nextInt(300).toDouble() + 70;
    _color =
        Color.fromRGBO(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 1);
    _border = BorderRadius.circular(rnd.nextInt(100).toDouble()+ 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animaciones'),
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            height: _height,
            width: _width,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _border,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.library_music_sharp),
            onPressed: () {
              setState(() {
                cambiodefase();
              });
            }));
  }
}
