import 'package:flutter/cupertino.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';
import 'package:test_app/src/screens/detail/detail_screen.dart';
import 'package:test_app/src/screens/lenta/lenta_screen.dart';
import 'package:test_app/src/screens/main_screen.dart';
import 'package:test_app/src/screens/register/register_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case authRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case registerRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case detailRoute:
        return CupertinoPageRoute(
          builder: (context) => const DetailScreen(),
        );
      case mainRoute:
        return CupertinoPageRoute(builder: (context) => const MainScreen(),);
      case lentRoute:
        return CupertinoPageRoute(builder: (context) => const LentaScreen(),);
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}
