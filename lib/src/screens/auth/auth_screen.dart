// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';
import 'package:test_app/src/router/routing_const.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Authorization'),
        backgroundColor: AppColors.white,
        border: Border(),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: AppColors.white,
                child: Column(
                  children: [
                    const CustomTextField(),
                    Container(
                      height: 1,
                      color: AppColors.dividerLine,
                      margin: AppPaddings.horizontal,
                    ),
                    const CupertinoTextField(
                      placeholder: 'password',
                      padding: AppPaddings.textFieldPaddings,
                      decoration: BoxDecoration(color: AppColors.white),
                    ),
                  ],
                )),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: CupertinoButton(
                padding: AppPaddings.buttonPaddings,
                color: AppColors.main,
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
              padding: AppPaddings.horizontal,
              child: CupertinoButton(
                padding: AppPaddings.buttonPaddings,
                color: AppColors.main,
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Login or email',
  }) : super(key: key);

  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return const CupertinoTextField(
      placeholder: 'Login or mail',
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      decoration: BoxDecoration(color: AppColors.white),
    );
  }
}
