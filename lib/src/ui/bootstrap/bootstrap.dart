import 'package:fetchnow/src/src.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  windowManager.ensureInitialized();
  runApp(const App());
}
