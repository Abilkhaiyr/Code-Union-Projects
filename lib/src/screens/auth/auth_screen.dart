// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:test_app/src/router/routing_const.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Authorization'),
        backgroundColor: CupertinoColors.white,
        border: Border(),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CupertinoTextField(
              placeholder: 'Login or mail',
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            Container(
              height: 1,
              color: const Color(0xFFE0E6ED),
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
            ),
            const CupertinoTextField(
              placeholder: 'password',
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF4631D2),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: const Color(0xFF4631D2),
                child: const Text('Sign in',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
