import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';

List a = [
  "assets/images/image1.png",
  "assets/images/image2.png",
  "assets/images/image3.png",
];
List b = [
  "Esentai Mall",
  "Mega Center",
  "Aport",
];
List des = [
  "Один из крупнейших торговых центров в городе",
  "Mega Center",
  "Aport",
];

List c = [
  "Аль-Фараби",
  "Розыбакиев",
  "Ташкентская",
];

// ignore: must_be_immutable
class LentaScreen extends StatelessWidget {
  const LentaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: CupertinoSearchTextField(),
            ),
            Expanded(
              child: ListView.separated(
                padding: AppPaddings.horizontal,
                shrinkWrap: true,
                itemCount: a.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 234,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              a[index],
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                              height: 140,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: SizedBox(
                              width: double.infinity,
                              height: 94,
                              // color: AppColors.buttonBackground,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        b[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(des[index]),
                                      Text(c[index]),
                                    ],
                                  )),
                                  const Icon(
                                    CupertinoIcons.heart_fill,
                                    color: CupertinoColors.systemRed,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
