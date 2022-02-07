import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  Color color;
  double height;
  Widget child;

  CustomCard({this.child, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 1,
            blurRadius: 2,
            color: Colors.black.withOpacity(0.3),
          )
        ],
      ),
      child: child,
    );
  }
}
