// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class IntputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnable;
  final double fontSize;
  final void Function(String text) onChanged;
  final String? Function(String? text) validator;


 IntputText({ Key? key, 
  this.label = '',
  this.keyboardType = TextInputType.text,
  this.obscureText = false,
  this.borderEnable = true,
  this.fontSize = 15,
  required this.onChanged,
  required this.validator,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            onChanged: onChanged,
            validator: validator,
            style: TextStyle(
             fontSize: fontSize,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              enabledBorder: this.borderEnable?UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ): InputBorder.none,
              labelText: this.label,
              labelStyle: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w400
                ),
              ),
      );
   }
}