import 'package:fetchnow/src/src.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

Future<void> bootstrap() async {
  AppUtils.checkPlatform();
  WidgetsFlutterBinding.ensureInitialized();
  windowManager.ensureInitialized();
  windowManager.setTitle(Constants.appName);
  runApp(const App());
}
