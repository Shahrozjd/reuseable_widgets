import 'package:crewapp/theme/styles.dart';
import 'package:crewapp/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

Widget messagesShimmer(BuildContext context, int count) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: count,
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget.rectangular(
              height: 20,
              width: Styles.width(context) * 0.6,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShimmerWidget.rectangular(
                  height: 20,
                  width: Styles.width(context) * 0.2,
                ),
                ShimmerWidget.rectangular(
                  height: 20,
                  width: Styles.width(context) * 0.1,
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
