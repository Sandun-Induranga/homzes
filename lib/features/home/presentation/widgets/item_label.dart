import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/constants/color_codes.dart';
import 'package:homzes/core/utils/extensions.dart';

class ItemLabel extends StatelessWidget {
  const ItemLabel({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.p12.w, vertical: AppPaddings.p4.h),
      margin: const EdgeInsets.only(right: AppPaddings.p4),
      decoration: BoxDecoration(
        color: ColorCodes.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
      ),
      child: Text(
        value,
        style: context.theme.textTheme.labelSmall!.copyWith(
          color: ColorCodes.blackColor,
        ),
      ),
    );
  }
}
