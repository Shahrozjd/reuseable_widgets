import 'package:crewapp/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'colors.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  Box<bool> themeBox = Hive.box(HiveConstants.themeBox);

  void initialCheck(bool isDark) {
    _isDarkTheme = isDark;
    print("theme mode: $_isDarkTheme");
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    themeBox.put(HiveConstants.themeBoxKey, _isDarkTheme);
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      primaryColor: CustomColors.cColor,
      textTheme: GoogleFonts.nunitoTextTheme(
        ThemeData.light().textTheme,
      ),
      primaryColorLight: CustomColors.cColorLight,
      primaryColorDark: CustomColors.cColorDark,
      scaffoldBackgroundColor: Color(0xFFF0F3FD),
      backgroundColor: Colors.white,
      highlightColor: Colors.black.withOpacity(0.2),
      dividerColor: Colors.black54,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(color: CustomColors.cColor),
      accentColor: Colors.black,
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.cColor,
        textTheme: ButtonTextTheme.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CustomColors.cColor,
        unselectedItemColor: CustomColors.ultraLightBlue,
        selectedItemColor: Colors.white,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColors.deepBlue))),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
        primaryColor: Color(0xFF4CA7A8),
        primaryColorLight: Color(0xFFD7EFF0),
        scaffoldBackgroundColor: Color(0xFF303D46),
        backgroundColor: Color(0xFF212B32),
        highlightColor: Colors.white,
        dividerColor: Colors.grey,
        textTheme: GoogleFonts.nunitoTextTheme(
          ThemeData.dark().textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF4CA7A8),
        ),
        accentColor: Colors.white,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.black),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.lightGrey,
          textTheme: ButtonTextTheme.primary,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: CustomColors.darkGrey,
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.black,
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))));
  }
}
