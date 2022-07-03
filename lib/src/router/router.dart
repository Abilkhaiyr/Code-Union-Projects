import 'package:flutter/cupertino.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';
import 'package:test_app/src/screens/auth/register/register_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}
