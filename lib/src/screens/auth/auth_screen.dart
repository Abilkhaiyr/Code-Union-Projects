// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';
import 'package:test_app/src/common/models/tokens_model.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:test_app/src/screens/auth/bloc/log_in_bloc.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Dio dio = Dio();
  void requestMethod() async {}
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                    CustomTextField(
                      controller: emailController,
                      placeholder: 'Log in',
                    ),
                    Container(
                      height: 1,
                      color: AppColors.dividerLine,
                      margin: AppPaddings.horizontal,
                    ),
                    CupertinoTextField(
                      controller: passwordController,
                      placeholder: 'password',
                      padding: AppPaddings.textFieldPaddings,
                      decoration: const BoxDecoration(color: AppColors.white),
                    ),
                  ],
                )),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: AppPaddings.horizontal,
              child: BlocBuilder<LogInBloc, LogInState>(
                builder: (context, state) {
                  return CupertinoButton(
                    padding: AppPaddings.buttonPaddings,
                    color: AppColors.main,
                    onPressed: () async {
                      context.read<LogInBloc>().add(
                            LogInPressed(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                      Box tokensBox = Hive.box('tokens');
                      tokensBox.put('access', 'testovaya_zapis');
                      // Выводим значение access из Hive
                      print(tokensBox.get('access'));
                      try {
                        Response response = await dio.post(
                          'http://188.225.83.80:6719/api/v1/auth/login',
                          data: {
                            'email': emailController.text,
                            'password': passwordController.text,
                          },
                        );
                        TokensModel tokensModel = TokensModel.fromJson(
                          response.data['tokens'],
                        );

                        print(tokensModel.access);
                        print(tokensModel.refresh);
                        tokensBox.put(
                            'access', response.data['tokens']['accessToken']);
                        tokensBox.put(
                            'refresh', response.data['tokens']['refreshToken']);

                        // Выводим их

                        Navigator.pushReplacementNamed(context, MainRoute);
                      } on DioError catch (e) {
                        print(e.response!.data);
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: const Text('Ошибка'),
                              content:
                                  const Text('Неправильный логин или пароль!'),
                              actions: [
                                CupertinoButton(
                                  child: const Text('ОК'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            );
                          },
                        );
                        rethrow;
                      }
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
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
                onPressed: () async {
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
    this.placeholder = 'email or phone number',
    this.suffix,
    // Добавили параметр controller в конструктор
    this.controller,
  }) : super(key: key);

  final String placeholder;
  final Widget? suffix;
  // Создаём поле controller
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      // Передаем controller в CupertinoTextField
      controller: controller,
      placeholder: placeholder,
      decoration: const BoxDecoration(
        color: CupertinoColors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      suffix: suffix,
    );
  }
}
