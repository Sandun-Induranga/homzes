import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/utils/extensions.dart';
import 'package:homzes/core/widgets/gap_widgets/horizontal_gap_consistent.dart';
import 'package:homzes/core/widgets/gap_widgets/vertical_gap_consistent.dart';

import '../../constants/color_codes.dart';
import 'common_search.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.isNeedProfileDetails = false,
  });

  final bool isNeedProfileDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isNeedProfileDetails
            ? ColorCodes.appBarPrimaryColor
            : ColorCodes.appBarSecondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + AppPaddings.p20.h,
        bottom: AppPaddings.p20.h,
        left: AppPaddings.p16.w,
        right: AppPaddings.p16.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isNeedProfileDetails)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 28.r,
                  color: ColorCodes.blackColor,
                ),
                Row(
                  children: [
                    Text(
                      "Hi, Stanislav",
                      style: context.theme.textTheme.titleMedium!,
                    ),
                    HorizontalGapWidget(AppPaddings.p12.w),
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorCodes.profileIconColor,
                          child: Text(
                            "S",
                            style: context.theme.textTheme.titleMedium!,
                          ),
                        ),
                        Positioned(
                          top: 2.r,
                          right: 2.r,
                          child: Container(
                            width: 10.r,
                            height: 10.r,
                            decoration: const BoxDecoration(
                              color: ColorCodes.onlineStatusColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          VerticalGapWidget(AppPaddings.p16.h),
          Row(
            children: [
              if (!isNeedProfileDetails)
                Container(
                  padding: EdgeInsets.all(AppPaddings.p16.r),
                  decoration: BoxDecoration(
                    color: ColorCodes.blackColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Icon(
                    Icons.menu,
                    size: 25.r,
                    color: ColorCodes.whiteColor,
                  ),
                ),
              if (!isNeedProfileDetails) HorizontalGapWidget(AppPaddings.p12.w),
              const CommonSearch(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 110.h);
}
