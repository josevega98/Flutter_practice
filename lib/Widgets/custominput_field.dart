import 'package:flutter/material.dart';

class Custom_inputFiel extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? inputType;
  final bool obscureText;
  final Icon? sufix;
  final Icon? icon;

  final String formProperty;
  final Map<String, String> formValues;

  const Custom_inputFiel({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.sufix,
    this.icon,
    this.inputType,
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      keyboardType: inputType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {formValues[formProperty] = value},
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
