import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/router/routing_const.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          const SizedBox(height: 32),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 36,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(360),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://mir-s3-cdn-cf.behance.net/projects/404/c33c1899224199.Y3JvcCwzMjMyLDI1MjgsMCww.jpg',
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
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
              ),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            color: AppColors.white,
            child: Column(
              children: [
                CupertinoButton(
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Выход',
                      style: TextStyle(
                        color: AppColors.red,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    Box tokensBox = Hive.box('tokens');
                    tokensBox.delete('access');
                    tokensBox.delete('refresh');

                    Navigator.of(
                      context,
                      rootNavigator: true,
                    ).pushReplacementNamed(
                      authRoute,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
