import 'package:fetchnow/src/ui/ui.dart';
import 'package:flutter/material.dart';

class AppRouteNames {
  static const String home = "/home";
  static const String splash = "/splash";
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.splash:
        return _buildMaterialPageRoute(
          const Splash(),
          name: AppRouteNames.splash,
        );

      case AppRouteNames.home:
        return _buildMaterialPageRoute(
          const Home(),
          name: AppRouteNames.home,
        );
      default:
        return _buildMaterialPageRoute(
          const NotFound(),
          name: settings.name,
        );
    }
  }

  static Route<dynamic> _buildMaterialPageRoute(Widget widget, {String? name}) {
    return MaterialPageRoute(
      builder: (_) => widget,
      settings: RouteSettings(name: name),
    );
  }
}
