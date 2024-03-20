import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    super.key, 
    this.initialValue,
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.counterText, 
    this.prefixIcon, 
    this.suffixIcon, 
    this.icon,
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: keyboardType,
      autofocus: false,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      initialValue: initialValue,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        return  value == null ? 'Este campo es requerido' :
                value.length < 3 ? 'Se requiere minimo 3 catarcteres' :
                null;  
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}