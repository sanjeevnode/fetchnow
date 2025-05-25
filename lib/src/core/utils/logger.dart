import 'dart:developer' as developer;

class Logger {
  static void i(Object msg, {String tag = 'INFO'}) {
    _print(msg, tag, '34'); // Blue
  }

  static void s(Object msg, {String tag = 'SUCCESS'}) {
    _print(msg, tag, '32'); // Green
  }

  static void w(Object msg, {String tag = 'WARNING'}) {
    _print(msg, tag, '33'); // Yellow
  }

  static void e(Object msg, {String tag = 'ERROR'}) {
    _print(msg, tag, '31'); // Red
  }

  static void _print(Object msg, String tag, String colorCode) {
    final timestamp = DateTime.now().toIso8601String();

    final coloredTimestampAndMsg = _colorize('[$timestamp] $msg', colorCode);

    final coloredTag = _colorize(tag, colorCode);

    developer.log(
      coloredTimestampAndMsg,
      name: coloredTag,
    );
  }

  static String _colorize(String text, String colorCode) =>
      '\x1B[${colorCode}m$text\x1B[0m';
}
