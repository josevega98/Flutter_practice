import 'package:componentes_leccion/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myformkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jose',
      'Las_name': 'Vega',
      'email': 'vega@gmail.com',
      'password': '12345',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myformkey,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Custom_inputFiel(
                  hintText: 'Introduce tu nombre',
                  labelText: 'Correo',
                  helperText: 'minimo 3 caracteres',
                  sufix: const Icon(Icons.ac_unit_outlined),
                  icon: const Icon(Icons.add_alert),
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                Custom_inputFiel(
                  hintText: 'Introduce tu apellido',
                  labelText: 'Apellidos',
                  helperText: 'minimo 3 caracteres',
                  sufix: const Icon(Icons.ac_unit_outlined),
                  icon: const Icon(Icons.add_alert),
                  // inputType: TextInputType.emailAddress,
                  formProperty: 'last_name', formValues: formValues,
                ),
                const SizedBox(height: 30),
                Custom_inputFiel(
                  hintText: 'Introduce tu correo',
                  labelText: 'Apellidos',
                  helperText: 'minimo 3 caracteres',
                  sufix: const Icon(Icons.ac_unit_outlined),
                  icon: const Icon(Icons.add_alert),
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                Custom_inputFiel(
                  hintText: 'Introduce tu clave',
                  labelText: 'Apellidos',
                  helperText: 'minimo 3 caracteres',
                  sufix: const Icon(Icons.ac_unit_outlined),
                  icon: const Icon(Icons.add_alert),
                  obscureText: true,
                  // inputType: TextInputType.emailAddress,
                  formProperty: 'password', formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myformkey.currentState!.validate()) return;

                    print(formValues);
                  },
                )
              ],
            ),
          ),
        )));
  }
}