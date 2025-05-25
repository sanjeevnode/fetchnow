import 'package:flutter/material.dart';

class AppSize {
  AppSize(this.context);
  final BuildContext context;

  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;

  double height(double value) {
    return screenHeight * (value / 100);
  }

  double width(double value) {
    return screenWidth * (value / 100);
  }

  SizedBox hSpace(double value, {bool relative = false}) {
    if (relative) {
      return SizedBox(width: width(value));
    }
    return SizedBox(width: value);
  }

  SizedBox vSpace(double value, {bool relative = false}) {
    if (relative) {
      return SizedBox(height: height(value));
    }
    return SizedBox(height: value);
  }
}
