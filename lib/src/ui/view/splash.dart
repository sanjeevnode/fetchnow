import 'package:fetchnow/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void _initSize() {
    Logger.i('Splash[_initSize] - Initializing window size and options');
    windowManager.waitUntilReadyToShow(
      const WindowOptions(
        center: true,
        size: Size(600, 300),
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
      ),
      () async {
        await windowManager.center();
        await windowManager.setResizable(false);
        await windowManager.show();
        await windowManager.focus();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _initSize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.logo.svg(
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
