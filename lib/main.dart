import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/router/router.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),

      onGenerateRoute: AppRouter.generateRoute,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
      ),
    );
  }
}


