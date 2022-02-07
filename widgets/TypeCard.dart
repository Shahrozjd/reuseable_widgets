import 'package:flutter/material.dart';

class TypeCard extends StatelessWidget {
  String mapTypeImage;
  VoidCallback onTap;

  TypeCard({this.mapTypeImage, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(mapTypeImage), fit: BoxFit.fill)),
      ),
    );
  }
}
