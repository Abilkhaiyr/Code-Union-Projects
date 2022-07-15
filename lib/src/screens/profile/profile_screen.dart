import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/color_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Profile"),
        backgroundColor: AppColors.white,
        border: Border(),
      ),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 32),
                child: const Icon(
                  CupertinoIcons.person_crop_circle,
                  size: 128,
                  color: CupertinoColors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Maripbek Chingiz",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "maripbek.chingiz@gmail.com",
                style: TextStyle(color: Color(0xFF929292)),
              )
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          CupertinoButton(
            onPressed: () {},
            color: AppColors.white,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Exit",
                style: TextStyle(color: CupertinoColors.systemRed),
              ),
            ),
          )
        ],
      )),
    );
  }
}
