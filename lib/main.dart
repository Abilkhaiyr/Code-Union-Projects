import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/router/router.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('tokens');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String initialRoute = AuthRoute;
  @override
  void initState() {
    // Получаем Box токенов

    Box tokensBox = Hive.box('tokens');

    // Делаем проверку если access или refresh токены равны 'null'
    if (tokensBox.get('access') != null || tokensBox.get('refresh') != null) {
      // Если пользователь будет авторизован, то в консоле отобразиться текст "Открываю MainScreen"
      initialRoute = MainRoute;
      print("Открываю MainScreen");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      home: const AuthScreen(),
      onGenerateRoute: AppRouter.generateRoute,
      theme: const CupertinoThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
      ),
    );
  }
}
