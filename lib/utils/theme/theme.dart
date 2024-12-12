import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/utils/theme/widget_theme/text_theme.dart';

import 'widget_theme/chip_theme.dart';


class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      // checkboxTheme: TCheckBoxTheme.lightCheckBoxThemeData,
      // appBarTheme: TAppBarTheme.lightAppBarTheme,
      // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      // outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      // inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: TChipTheme.darkChipTheme,
    // checkboxTheme: TCheckBoxTheme.darkCheckBoxThemeData,
    // appBarTheme: TAppBarTheme.darkAppBarTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
  );
}