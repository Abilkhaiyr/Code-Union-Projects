import 'package:flutter/cupertino.dart';
import 'package:test_app/src/screens/auth/auth_screen.dart';
import 'package:test_app/src/screens/detail/detail_screen.dart';
import 'package:test_app/src/screens/favourites/favourites_screen.dart';
import 'package:test_app/src/screens/lenta/lenta_screen.dart';
import 'package:test_app/src/screens/profile/profile_screen.dart';
import 'package:test_app/src/screens/register/register_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bars)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.map)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_circle)),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(builder: (context) {
            switch (index) {
              case 0:
                return const LentaScreen();
              case 1:
                return const DetailScreen();
              case 2:
                return const FavouritesScreen();
              case 3:
                return const ProfileScreen();
              default:
                return const RegisterScreen();
            }
          });
        });
  }
}
