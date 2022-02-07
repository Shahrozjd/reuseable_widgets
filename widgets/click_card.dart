import 'package:crewapp/theme/styles.dart';
import 'package:flutter/material.dart';

class TrainerProfileCards extends StatelessWidget {
  String title;
  IconData icondata;
  Function onpress;
  Color iconcolor;

  TrainerProfileCards(
      {this.title, this.icondata, this.iconcolor, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      height: 80,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.indigo,
        elevation: 5.0,
        child: MaterialButton(
          elevation: 5.0,
          onPressed: ()=>onpress,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              Icon(
                icondata,
                color: iconcolor,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: cTextStyleMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
