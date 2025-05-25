import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double? width;
  final double? height;
  final double? value; // Between 0.0 and 1.0
  final Color? backgroundColor;
  final Color? valueColor;

  const ProgressBar({
    super.key,
    this.width,
    this.height = 8.0,
    this.value,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.valueColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: backgroundColor,
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: Colors.transparent,
        valueColor: AlwaysStoppedAnimation<Color>(
          valueColor ?? Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
