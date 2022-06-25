// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Authorization'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              placeholder: 'Login or mail',
            ),
            CupertinoTextField(
              placeholder: 'password',
            ),
            CupertinoButton.filled(
              child: Text('Log in'),
              onPressed: () {},
            ),
            CupertinoButton.filled(
              child: Text('Sign in'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
