import 'package:crewapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toaster {
  static void showToast(String message, ToastGravity toastGravity) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: toastGravity,
        timeInSecForIosWeb: 1,
        backgroundColor: CustomColors.cColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
