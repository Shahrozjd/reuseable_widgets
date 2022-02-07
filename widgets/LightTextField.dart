import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTextField extends StatelessWidget {
  BuildContext context;
  bool obscureText;
  var inputType;
  String labelText, hinText;
  Function onChanged;
  TextEditingController controller;
  bool hasFocus;
  VoidCallback onEditingComplete;
  TextInputAction textInputAction;
  FocusNode focusNode;
  bool isValidate;

  LightTextField({
    this.context,
    this.obscureText,
    this.inputType,
    this.labelText,
    this.hinText,
    this.onChanged,
    this.controller,
    this.hasFocus,
    this.onEditingComplete,
    this.textInputAction,
    this.focusNode,
    this.isValidate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      focusNode: focusNode,
      enabled: hasFocus,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hinText,
        labelText: labelText,
        labelStyle: GoogleFonts.nunito(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
      validator: (value) {
        if (isValidate) {
          if (value == null || value.isEmpty) {
            return 'Please enter ' + labelText;
          }
        }
        return null;
      },
    );
  }
}
