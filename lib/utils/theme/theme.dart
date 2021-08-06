import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color black01 = Color(0xFF000000);
final Color grey01 = Color(0xFF4F4F4F);
final Color green01 = Color(0xFF1E311D);
final Color green02 = Color(0xFF235021);
final Color green03 = Color(0xFF387A36);
final Color green04 = Color(0xFF2DBB28);
final Color green05 = Color(0xFF08E700);
final Color green06 = Color(0xFFAFE9AF);
final Color yellow01 = Color(0xFFFFF000);

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline5: base.headline5!.copyWith(
        fontFamily: 'Roboto',
        fontSize: 22.0,
        color: Colors.grey,
      ),
      headline6: base.headline6!.copyWith(
        fontFamily: 'Roboto',
        fontSize: 24.0,
        color: Colors.green,
      ),
      bodyText1: base.bodyText1!.copyWith(
        fontFamily: 'Roboto',
        fontSize: 15.0,
        color: Color(0xff08E700),
      ),
      bodyText2: base.bodyText2!.copyWith(
        fontFamily: 'Roboto',
        fontSize: 15.0,
        color: Color(0xff08E700),
      ),
    );
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xFF1E311D),
    indicatorColor: Color(0xFF807A6B),
    scaffoldBackgroundColor: green02,
    accentColor: yellow01,
    buttonColor: Color(0xFF387A36),
    backgroundColor: Colors.red,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 20.0,
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: green03,
      foregroundColor: yellow01,
      hoverColor: green04,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      brightness: Brightness.dark,
      textTheme: base.textTheme.copyWith(
        headline6: base.textTheme.headline6?.copyWith(
          fontFamily: 'Merienda',
          fontSize: 24.0,
          color: green06,
        ),
      ),
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: green01,
      unselectedLabelColor: green06,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: green01,
      unselectedItemColor: green06,
      selectedItemColor: yellow01,
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: green06,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: yellow01,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: green05,
        ),
      ),
      labelStyle: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        color: green01,
      ),
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
    ),
  );
}
