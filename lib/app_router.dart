import 'package:cyberchatbot/Features/conversation/conversation_screen.dart';
import 'package:cyberchatbot/Features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter();

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
      case SplashScreen.routeName:
        return _buildPage(const SplashScreen(), settings: settings);
      case ConversationScreen.routeName:
        return _buildPage(const ConversationScreen(), settings: settings);

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  static PageRouteBuilder _buildPage(Widget page, {RouteSettings? settings}) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      reverseTransitionDuration: const Duration(),
      transitionDuration: const Duration(),
    );
  }
}
