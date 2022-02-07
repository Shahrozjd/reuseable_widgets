import 'package:flutter/material.dart';

class ShowFpImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 30.0),
      child: Image.asset(
        'assets/images/aalborg.jpg',
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
