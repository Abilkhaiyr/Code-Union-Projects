import 'package:flutter/cupertino.dart';
import 'package:test_app/src/common/constants/border_radius_const.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/widgets/custom_text_field.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    this.backgroundColor = const Color(0x00000000),
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefix: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: const Icon(
          CupertinoIcons.search,
          color: AppColors.inActive,
        ),
      ),
      placeholder: 'Поиск',
      borderRadius: AppBorderRadius.primary,
      backgroundColor: backgroundColor,
      border: Border.all(
        color: AppColors.stroke,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 12,
      ),
    );
  }
}
