import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';
import 'package:test_app/src/common/constants/text_style_constants.dart';
import 'package:test_app/src/common/widgets/custom_back_arrow_widget.dart';
import 'package:test_app/src/common/widgets/text_field_divider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CachedNetworkImage(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        imageUrl:
                            'https://cdn.iconscout.com/icon/free/png-256/data-not-found-1965034-1662569.png')
                  ],
                ),
              ),
              Container(
                height: kToolbarHeight * 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      CupertinoColors.black.withOpacity(.8),
                      CupertinoColors.black.withOpacity(0),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomBackArrow(
                      color: AppColors.white,
                    ),
                    const Text(
                      "Esentai Mall",
                      style: TextStyle(color: AppColors.white),
                    ),
                    CupertinoButton(
                      child: const Icon(CupertinoIcons.heart,
                          color: AppColors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: AppPaddings.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Description', style: descriptionTitleTextStyle),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Text',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: descriptionTextStyle,
                ),
                const SizedBox(height: 5),
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: const Text('Подробнее',
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.underline)),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const TextFieldDivider(),
          Padding(
            padding: AppPaddings.primary,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.clock,
                      color: CupertinoColors.black,
                      size: 16,
                    ),
                    SizedBox(width: 14),
                    Text('Работаем с 18:00 до 20:00'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.map_pin,
                      color: CupertinoColors.black,
                      size: 16,
                    ),
                    SizedBox(width: 14),
                    Text('Аль Фараби'),
                  ],
                ),
              ],
            ),
          ),
          const TextFieldDivider(),
        ],
      ),
    );
  }
}
