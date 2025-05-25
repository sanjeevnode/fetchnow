import 'dart:io';

import 'package:fetchnow/src/core/core.dart';

class AppUtils {
  static void checkPlatform() {
    if (!Platform.isWindows) {
      Logger.e(
        '❌ This application is only supported on Windows. Please run it on a Windows machine.',
        tag: 'Platform Check',
      );
      exit(1);
    } else {
      Logger.s(
        '✅ Running on Windows.',
        tag: 'Platform Check',
      );
    }
  }
}
