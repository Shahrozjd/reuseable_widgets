// import 'dart:ui';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:charts_flutter/flutter.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
// import 'package:maas_b0005/theme/styles.dart';
// import 'package:maas_b0005/widgets/round_rect_button.dart';
// import 'package:maas_b0005/widgets/round_rect_button_custom.dart';
// import 'package:maas_b0005/pages/search_address_view.dart';
// import 'package:maas_b0005/widgets/toaster.dart';
//
// class JourneyDateTimePickerBox extends StatefulWidget {
//   @override
//   _JourneyDateTimePickerBoxState createState() =>
//       _JourneyDateTimePickerBoxState();
// }
//
// class _JourneyDateTimePickerBoxState extends State<JourneyDateTimePickerBox>
//     with TickerProviderStateMixin {
//   DateTime currentTime, leaveTime, arriveTime;
//   TabController _tabController;
//   final List<Tab> myTabs = <Tab>[
//     Tab(text: "NOW"),
//     Tab(text: "LEAVE AT"),
//     Tab(text: "ARRIVE BY"),
//   ];
//
//   @override
//   void initState() {
//     _tabController = new TabController(vsync: this, length: myTabs.length);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       elevation: 5,
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       child: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height * 0.6,
//           padding: EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               AutoSizeText(
//                 'Set the time of your Journey',
//                 style: cTextStyleMediumBold,
//                 textAlign: TextAlign.center,
//                 maxLines: 1,
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 child: Scaffold(
//                   appBar: PreferredSize(
//                     preferredSize: Size.fromHeight(50.0),
//                     child: AppBar(
//                       elevation: 0,
//                       backgroundColor: Colors.transparent,
//                       bottom: TabBar(
//                           controller: _tabController,
//                           indicatorColor: Theme.of(context).primaryColor,
//                           labelColor: Theme.of(context).primaryColor,
//                           unselectedLabelColor: Colors.grey,
//                           tabs: myTabs),
//                     ),
//                   ),
//                   body: TabBarView(controller: _tabController, children: [
//                     Container(
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.25,
//                         child: CupertinoTheme(
//                           data: CupertinoThemeData(
//                               brightness: Theme.of(context).brightness),
//                           child: CupertinoDatePicker(
//                             initialDateTime: DateTime.now(),
//                             onDateTimeChanged: (DateTime nowDate) {
//                               currentTime = nowDate;
//                               leaveTime = null;
//                               arriveTime = null;
//                             },
//                             use24hFormat: true,
//                             minimumYear: 2010,
//                             maximumYear: 2018,
//                             minuteInterval: 1,
//                             mode: CupertinoDatePickerMode.dateAndTime,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: CupertinoDatePicker(
//                         initialDateTime: DateTime.now(),
//                         onDateTimeChanged: (DateTime leaveDate) {
//                           leaveTime = leaveDate;
//                           currentTime = null;
//                           arriveTime = null;
//                         },
//                         use24hFormat: true,
//                         minimumYear: 2010,
//                         maximumYear: 2018,
//                         minuteInterval: 1,
//                         mode: CupertinoDatePickerMode.dateAndTime,
//                       ),
//                     ),
//                     Container(
//                       child: CupertinoDatePicker(
//                         initialDateTime: DateTime.now(),
//                         onDateTimeChanged: (DateTime arriveDate) {
//                           arriveTime = arriveDate;
//                           currentTime = null;
//                           leaveTime = null;
//                         },
//                         use24hFormat: true,
//                         minimumYear: 2010,
//                         maximumYear: 2018,
//                         minuteInterval: 1,
//                         mode: CupertinoDatePickerMode.dateAndTime,
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   RoundRectButton(
//                     onPress: () {
//                       print(_tabController.index);
//                       if (_tabController.index == 0) {
//                         if (currentTime == null) {
//                           DateTime dt = DateTime.now();
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(dt);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'now',
//                                   ),
//                             ),
//                           );
//                         }
//                         else if (currentTime != null) {
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(currentTime);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'now',
//                                   ),
//                             ),
//                           );
//                         }
//                       }
//                       else if (_tabController.index == 1) {
//                         if (leaveTime == null) {
//                           DateTime dt = DateTime.now();
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(dt);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'leave',
//                                   ),
//                             ),
//                           );
//                         }
//                         else if (leaveTime != null) {
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(leaveTime);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'leave',
//                                   ),
//                             ),
//                           );
//                         }
//                       }
//                       else if (_tabController.index == 2) {
//                         if (arriveTime == null) {
//                           DateTime dt = DateTime.now();
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(dt);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'arrive',
//                                   ),
//                             ),
//                           );
//                         }
//                         else if (arriveTime != null) {
//                           String formattedCurrentDate =
//                           DateFormat('dd-MM-yy&kk:mm').format(arriveTime);
//                           print(formattedCurrentDate);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   SearchAddressView(
//                                     currentTime: formattedCurrentDate,
//                                     jouneyType: 'arrive',
//                                   ),
//                             ),
//                           );
//                         }
//                       }
//                     },
//                     text: 'OK',
//                     height: MediaQuery.of(context).size.height * 0.05,
//                   ),
//                   SizedBox(
//                     height: Styles.height(context) * 0.01,
//                   ),
//                   RoundRectButtonCustom(
//                     onPress: () {
//                       Navigator.pop(context);
//                     },
//                     text: 'Cancel',
//                     height: MediaQuery.of(context).size.height * 0.05,
//                     backgroundColor: Colors.grey,
//                     foregroundColor: Colors.black,
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
