import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


var kTextStyleLarge = GoogleFonts.nunito(fontSize: 30, color: Colors.white);
var kTextStyleExLarge = GoogleFonts.nunito(fontSize: 40, color: Colors.white);
var kTextStyle = GoogleFonts.nunito(color: Colors.white,fontSize: 16);
var kTextStyleDefault = GoogleFonts.nunito(color: Colors.white);
var kTextStyleMedium = GoogleFonts.nunito(color: Colors.white,fontSize: 22);

var kTextStyleLargeBold = GoogleFonts.nunito(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleBold = GoogleFonts.nunito(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumBold = GoogleFonts.nunito(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold);

var kTextStyleLargeThin = GoogleFonts.nunito(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleThin = GoogleFonts.nunito(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumThin = GoogleFonts.nunito(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400);

var kTextStyleLargeBlack = GoogleFonts.nunito(color: Colors.black,fontSize: 30);
var kTextStyleBlack = GoogleFonts.nunito(color: Colors.black,fontSize: 16);
var kTextStyleMediumBlack = GoogleFonts.nunito(color: Colors.black,fontSize: 22);

var kTextStyleLargeBlackBold = GoogleFonts.nunito(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleBlackBold = GoogleFonts.nunito(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumBlackBold = GoogleFonts.nunito(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold);


var kTextStyleLargeBlackThin = GoogleFonts.nunito(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleBlackThin = GoogleFonts.nunito(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumBlackThin = GoogleFonts.nunito(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400);

var kTextStyleLargeAccent = GoogleFonts.nunito(color: Colors.black,fontSize: 30);
var kTextStyleAccent = GoogleFonts.nunito(color: Colors.black,fontSize: 16);
var kTextStyleMediumAccent = GoogleFonts.nunito(color: Colors.black,fontSize: 22);

var kTextStyleLargeAccentBold = GoogleFonts.nunito(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleAccentBold = GoogleFonts.nunito(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumAccentBold = GoogleFonts.nunito(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold);


var kTextStyleLargeAccentThin = GoogleFonts.nunito(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleAccentThin = GoogleFonts.nunito(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumAccentThin = GoogleFonts.nunito(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400);

// following theme data
var cTextStyleLarge = GoogleFonts.nunito(fontSize: 30,);
var cTextStyleExLarge = GoogleFonts.nunito(fontSize: 40,);
var cTextStyle = GoogleFonts.nunito(fontSize: 16);
var cTextStyleMedium = GoogleFonts.nunito(fontSize: 22);

var cTextStyleLargeBold = GoogleFonts.nunito(fontSize: 30,fontWeight: FontWeight.bold);
var cTextStyleBold = GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.bold);
var cTextStyleMediumBold = GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.bold);

var cTextStyleLargeThin = GoogleFonts.nunito(fontSize: 30,fontWeight: FontWeight.w400);
var cTextStyleThin = GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.w400);
var cTextStyleMediumThin = GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.w400);



class Styles{

  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static BoxDecoration boxDecoration(BuildContext context, bool isBorder){
    return BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: isBorder?Border.all(color: Theme.of(context).dividerColor, width: 1):Border.all(width: 0),
        );
  }
  static BoxDecoration boxDecorationShadow(BuildContext context, bool isBorder){
    return BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: isBorder?Border.all(color: Theme.of(context).dividerColor, width: 1):Border.all(width: 0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ]);
  }


}

