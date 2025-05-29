import 'package:flutter/material.dart';

class HoverWidget extends StatelessWidget {
  const HoverWidget({
    super.key,
    required this.child,
    this.onHover,
    this.onTap,
  });
  final Widget child;
  final void Function(bool isHovering)? onHover;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          onHover?.call(true);
        },
        onExit: (_) {
          onHover?.call(false);
        },
        child: child,
      ),
    );
  }
}
