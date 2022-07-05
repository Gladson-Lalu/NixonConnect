import 'package:flutter/material.dart';
import 'package:foodle/Common/constant.dart';

ThemeData primaryTheme() {
  return ThemeData(
      primaryColor: kPrimaryColor,
      backgroundColor: kBackgroundColor,
      primarySwatch: Colors.blueGrey,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              elevation:
                  MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12),
                      side: const BorderSide(
                          color: kButtonColor))),
              backgroundColor:
                  MaterialStateProperty.all<Color>(
                      kButtonColor))));
}
