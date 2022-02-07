import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  IconData iconData;
  BorderRadius borderRadius;
  final VoidCallback onPress;

  double height = 0.0, width = 0.0;

  IconButtons(
      {this.iconData,
       this.borderRadius,
       this.onPress});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.15,
      height: height * 0.08,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).accentColor),
          backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: borderRadius),
          ),
        ),
        onPressed: onPress,
        child: Icon(
          iconData,
          size: 25,
        ),
      ),
    );
  }
}
