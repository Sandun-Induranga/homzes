import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/utils/extensions.dart';

import '../../../../core/constants/color_codes.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  final String icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 172,
      padding: EdgeInsets.all(AppPaddings.p20.r),
      margin: EdgeInsets.only(right: AppPaddings.p8.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60.r,
            height: 60.r,
            decoration: const BoxDecoration(
              color: ColorCodes.whiteColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                icon,
                width: 24.r,
                height: 24.r,
              ),
            ),
          ),
          Text(
            title,
            style: context.theme.textTheme.headlineSmall!.copyWith(
              color: ColorCodes.blackColor,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
