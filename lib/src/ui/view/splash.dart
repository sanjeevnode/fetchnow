import 'package:fetchnow/src/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void _initSize() {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              'Loading...',
              style: AppTextStyle.displayH1,
            ),
            SizedBox(height: 10),
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
