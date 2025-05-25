import 'package:fetchnow/src/core/core.dart';
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
    Logger.i('Splash[_initSize] - Initializing window size and options');
    windowManager.waitUntilReadyToShow(
      const WindowOptions(
        center: true,
        size: Size(Constants.splashWidth, Constants.splashHeight),
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
    _navigateToHome();
  }

  @override
  void initState() {
    super.initState();
    _initSize();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, AppRouteNames.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral800,
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: AppSize(context).width(48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.logo.svg(
                        width: 56,
                        height: 56,
                      ),
                      const Spacer(),
                      Text(
                        Constants.appName,
                        style: AppTextStyle.displayH1.copyWith(
                          color: AppColors.white900,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'by ${Constants.appAuthor}',
                        style: AppTextStyle.textMdRegular.copyWith(
                          color: AppColors.white500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ProgressBar(
                    backgroundColor: AppColors.neutral700,
                    valueColor: AppColors.primary900,
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'v. ',
                      style: AppTextStyle.textSmRegular.copyWith(
                        color: AppColors.neutral50,
                      ),
                      children: [
                        TextSpan(
                          text: Constants.appVersion,
                          style: AppTextStyle.textMdRegular.copyWith(
                            color: AppColors.neutral50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
