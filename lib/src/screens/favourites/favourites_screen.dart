import 'package:flutter/cupertino.dart';

import '../../common/constants/color_constants.dart';
import '../../common/constants/padding_constants.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

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
                itemCount: 1,
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
                              'assets/images/image3.png',
                              fit: BoxFit.fill,
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
                                    children: const [
                                      Text(
                                        "Esentai Mall",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                          "Один из крупнейших торговых центров в городе"),
                                      Text("Аль-Фараби"),
                                    ],
                                  )),
                                  const SizedBox(
                                    width: 17,
                                  ),
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
