import 'package:flutter/material.dart';

ScaffoldMessenger showSnackbar(BuildContext context,{String text,Color color}){

  ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            
            margin: EdgeInsets.all(10),
            behavior: SnackBarBehavior.floating,
            content: Text(text),
            backgroundColor: color,
          ),
        );
}