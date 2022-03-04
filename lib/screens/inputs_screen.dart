import 'package:componentes_leccion/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [

              SizedBox(height: 30),
              Custom_inputFiel(hintText: 'Introduce tu nombre',labelText: 'Nombres', helperText: 'minimo 3 caracteres',sufix: Icon(Icons.ac_unit_outlined),icon: Icon(Icons.add_alert),),
              SizedBox(height: 30),
              Custom_inputFiel(hintText: 'Introduce tu Apellido',labelText: 'Apellidos', helperText: 'minimo 3 caracteres',sufix: Icon(Icons.ac_unit_outlined),icon: Icon(Icons.add_alert),),
              SizedBox(height: 30),
            ],
          ),
        )));
  }
}

