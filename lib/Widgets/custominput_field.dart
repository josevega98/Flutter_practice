import 'package:flutter/material.dart';

class Custom_inputFiel extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;

  final Icon? sufix;
  final Icon? icon;

  
  const Custom_inputFiel({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText, 
    this.sufix, 
    this.icon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {},
      validator: (value) {
        if (value == null) return 'este campo es obligatorio';
        return value.length < 3 ? 'minimo 3 caracteres ' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: sufix,
        icon: icon,

        /* border:OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ) */
      ),
    );
  }
}
