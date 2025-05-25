import 'package:fetchnow/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:window_manager/window_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _init() {
    windowManager.waitUntilReadyToShow(
      const WindowOptions(
        center: true,
        size: Constants.appSize,
        minimumSize: Constants.appSize,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.normal,
      ),
      () async {
        await windowManager.setResizable(true);
        await windowManager.center();
        await windowManager.maximize();
        await windowManager.show();
        await windowManager.focus();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.slate,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.logo.svg(
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome to FetchNow',
              style: AppTextStyle.displayH3.copyWith(
                color: AppColors.primary900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
