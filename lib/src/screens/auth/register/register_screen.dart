// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisible = true;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registration'),
        backgroundColor: Color(0xFFFEFEFE),
        border: Border(),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              color: CupertinoColors.white,
              child: Column(
                children: [
                  const CupertinoTextField(
                    placeholder: 'Login',
                    padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: const Color(0xFFE0E6ED),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  const CupertinoTextField(
                    placeholder: 'Phone number',
                    padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: const Color(0xFFE0E6ED),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  const CupertinoTextField(
                    placeholder: 'Email',
                    padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: const Color(0xFFE0E6ED),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  CupertinoTextField(
                    obscureText: true,
                    placeholder: 'Password',
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 16),
                    decoration: const BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    suffix: GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(right: 32),
                        child: const Icon(
                          CupertinoIcons.eye_slash,
                          color: CupertinoColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                onPressed: () {},
                color: const Color(0xFF4631D2),
                child: const Text(
                  'Create account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
