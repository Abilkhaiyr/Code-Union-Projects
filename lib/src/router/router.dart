import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';
import 'package:test_app/src/screens/detail/detail_screen.dart';
import 'package:test_app/src/screens/lenta/lenta_screen.dart';
import 'package:test_app/src/screens/main_screen.dart';
import 'package:test_app/src/screens/register/register_screen.dart';

import '../screens/auth/bloc/log_in_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LogInBloc(),
            child: const AuthScreen(),
          ),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case DetailRoute:
        return CupertinoPageRoute(
          builder: (context) => const DetailScreen(),
        );
      case MainRoute:
        return CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        );
      case LentRoute:
        return CupertinoPageRoute(
          builder: (context) => const LentaScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}
