import 'package:flutter/material.dart';

class ReWidget {
  static BoxDecoration cardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 0),
          spreadRadius: 1,
          blurRadius: 5,
          color: Colors.black.withOpacity(0.3),
        )
      ],
    );
  }

  static BoxDecoration cardDecorationAccent(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 0),
          spreadRadius: 1,
          blurRadius: 5,
          color: Theme.of(context).primaryColor.withOpacity(0.3),
        )
      ],
    );
  }

  BoxDecoration cardDecorationCircular(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Theme.of(context).primaryColor.withOpacity(0.8),
    );
  }
}
