import 'package:flutter/material.dart';
import 'package:zip_market/utils/theme/custom_themes/appbar_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/text_field_theme.dart';
import 'package:zip_market/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/chip_theme.dart';

class ZMAppTheme {
  ZMAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ZMTextTheme.ligthTextTheme,
    chipTheme: ZMChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: ZMAppBarTheme.lightAppBarTheme,
    checkboxTheme: ZMCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ZMBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ZMElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ZMOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ZMTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ZMTextTheme.darkTextTheme,
    chipTheme: ZMChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: ZMAppBarTheme.darkAppBarTheme,
    checkboxTheme: ZMCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ZMBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ZMElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ZMOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ZMTextFormFieldTheme.darkInputDecorationTheme,
  );
}
