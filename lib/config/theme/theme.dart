import 'package:flutter/material.dart';

const Color darkbackg = Color(0xff2C2C2E);
const Color darklight = Color(0xff3A3A3C);

const Color bgcolo = Color(0xff111928);
const Color accent = Color(0xff5D54FF);

const Color lightbackg = Color(0xffF2F4F6);
const Color lightdark = Color(0xffFFFFFF);

class ThemeClass {
  static final lightTheme = ThemeData(
    primaryColor: darkbackg,
  );

  static final darkTheme = ThemeData(
    primaryColor: lightbackg,
  );
}

ThemeClass _themeClass = ThemeClass();
