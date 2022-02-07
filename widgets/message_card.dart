import 'package:auto_size_text/auto_size_text.dart';
import 'package:crewapp/theme/styles.dart';
import 'package:crewapp/widgets/re_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class MessageCard extends StatelessWidget {
  String content;
  VoidCallback onPress;

  MessageCard({Key key, this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/msgDetail');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
        decoration: ReWidget.cardDecoration(),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    content.toString(),
                    style: kTextStyleBlack,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Thu, Dec 15",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onPress,
              icon: Icon(FontAwesome.right_open),
            ),
          ],
        ),
      ),
    );
  }
}
