import 'package:flutter/material.dart';

class CursorConstants {
  static BoxDecoration boxDecorationHorvered = BoxDecoration(
      border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(90),
      color: Colors.red.withOpacity(0.3));
  static BoxDecoration boxDecorationOne = BoxDecoration(
      border: Border.all(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(90),
      color: Colors.transparent);
  static BoxDecoration boxDecorationTwo = BoxDecoration(
      border: Border.all(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(90),
      color: Colors.red);
}
