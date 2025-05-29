import 'package:flutter/material.dart';
import 'package:fetchnow/src/core/core.dart';
import 'package:window_manager/window_manager.dart';

import 'hover_widget.dart'; // your HoverWidget class

class ControlButtons extends StatefulWidget {
  const ControlButtons({super.key});

  @override
  State<ControlButtons> createState() => _ControlButtonsState();
}

class _ControlButtonsState extends State<ControlButtons> {
  final List<bool> _hovering = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Minimize
        HoverWidget(
          onTap: () {
            windowManager.minimize();
          },
          onHover: (hover) => setState(() => _hovering[0] = hover),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 32,
            height: 32,
            color: _hovering[0] ? Colors.grey[700] : Colors.transparent,
            alignment: Alignment.center,
            child: Assets.icons.minus.svg(
              height: 24,
              width: 24,
              color: AppColors.white900,
            ),
          ),
        ),

        // Maximize / Restore
        HoverWidget(
          onTap: () async {
            bool isMaximized = await windowManager.isMaximized();
            if (isMaximized) {
              await windowManager.unmaximize();
            } else {
              await windowManager.maximize();
            }
          },
          onHover: (hover) => setState(() => _hovering[1] = hover),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 32,
            height: 32,
            color: _hovering[1] ? Colors.grey[700] : Colors.transparent,
            alignment: Alignment.center,
            child: Assets.icons.window.svg(
              height: 24,
              width: 24,
              color: AppColors.white900,
            ),
          ),
        ),

        // Close
        HoverWidget(
          onTap: () async {
            await windowManager.close();
          },
          onHover: (hover) => setState(() => _hovering[2] = hover),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 32,
            height: 32,
            color: _hovering[2] ? Colors.red[700] : Colors.transparent,
            alignment: Alignment.center,
            child: Assets.icons.close.svg(
              height: 24,
              width: 24,
              color: AppColors.white900,
            ),
          ),
        ),
      ],
    );
  }
}
