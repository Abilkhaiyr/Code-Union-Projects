// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registration'),
        backgroundColor: AppColors.white,
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
              color: AppColors.white,
              child: Column(
                children: [
                  const CupertinoTextField(
                    placeholder: 'Login',
                    padding: AppPaddings.textFieldPaddings,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.dividerLine,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  const CupertinoTextField(
                    placeholder: 'Phone number',
                    padding: AppPaddings.textFieldPaddings,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.dividerLine,
                    margin: AppPaddings.horizontal,
                  ),
                  const CupertinoTextField(
                    placeholder: 'Email',
                    padding: AppPaddings.textFieldPaddings,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.dividerLine,
                    margin: AppPaddings.horizontal,
                  ),
                  CupertinoTextField(
                    obscureText: true,
                    placeholder: 'Password',
                    padding: AppPaddings.textFieldPaddings,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    suffix: GestureDetector(
                      child: Container(
                        padding: AppPaddings.buttonToRight,
                        child: const Icon(
                          CupertinoIcons.eye_slash,
                          color: AppColors.hideIcon,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: AppPaddings.horizontal,
              child: CupertinoButton(
                onPressed: () {},
                color: AppColors.main,
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
