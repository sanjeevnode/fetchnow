import 'package:fetchnow/src/src.dart';
import 'package:flutter/material.dart';
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
        titleBarStyle: TitleBarStyle.hidden,
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
      body: SizedBox(
        width: AppSize(context).width(100),
        height: AppSize(context).height(100),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Titlebar(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Sidebar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
