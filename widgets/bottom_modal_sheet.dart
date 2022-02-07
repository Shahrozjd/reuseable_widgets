import 'package:flutter/material.dart';

Future<dynamic> bottomModalSheet({BuildContext context, Widget kChild, double height}){
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return BottomSheet(
          backgroundColor: Colors.transparent,
          onClosing: () {},
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Container(
                  height: height,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: kChild,
                );
              },
            );
          },
        );
      });
}



// StatefulBuilder(
// builder: (BuildContext context, StateSetter setState) {
// return Container(
// height: height,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(40),
// topLeft: Radius.circular(40),
// )),
// child: kChild,
// );
// },
// );