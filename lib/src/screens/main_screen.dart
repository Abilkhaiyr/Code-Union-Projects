import 'package:flutter/cupertino.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';
import 'package:test_app/src/screens/profile/profile_screen.dart';
import 'package:test_app/src/screens/register/register_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_circle)),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(builder: (context) {
            switch (index) {
              case 0:
                return const AuthScreen();
              case 1:
                return const RegisterScreen();
              case 2:
                return const AuthScreen();
              case 3:
                return const ProfileScreen();
              default:
                return const RegisterScreen();
            }
          });
        });
  }
}
