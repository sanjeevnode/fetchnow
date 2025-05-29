import 'package:fetchnow/src/src.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class Titlebar extends StatefulWidget {
  const Titlebar({super.key});

  @override
  State<Titlebar> createState() => _TitlebarState();
}

class _TitlebarState extends State<Titlebar> {
  @override
  Widget build(BuildContext context) {
    return DragToMoveArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        height: 40,
        decoration: const BoxDecoration(
          color: AppColors.slate1,
          border: Border(
            bottom: BorderSide(
              color: AppColors.slate,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Assets.icons.logo.svg(
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Text(
              Constants.appName,
              style: AppTextStyle.textSmRegular.copyWith(
                color: AppColors.white900,
              ),
            ),
            const Spacer(),
            const ControlButtons(),
          ],
        ),
      ),
    );
  }
}
