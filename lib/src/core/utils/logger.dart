import 'dart:developer' as developer;

/// AppLogger
class Logger {
  /// Info
  static void i(Object msg, {String tag = 'INFO'}) {
    _print('\x1B[34m$msg\x1B[34m', tag);
  }

  /// Success
  static void s(Object msg, {String tag = 'SUCCESS'}) {
    _print('\x1B[32m$msg\x1B[32m', tag);
  }

  /// Warning
  static void w(Object msg, {String tag = 'WARNING'}) {
    _print('\x1B[33m$msg\x1B[33m', tag);
  }

  /// Error
  static void e(Object msg, {String tag = 'ERROR'}) {
    _print('\x1B[31m$msg\x1B[31m', tag);
  }

  static void _print(String msg, String? tag) {
    final timestamp = DateTime.now().toIso8601String();
    developer.log(
      '[$timestamp] $msg',
      name: tag ?? '',
    );
  }
}
