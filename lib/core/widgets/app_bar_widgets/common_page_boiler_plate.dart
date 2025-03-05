import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/color_codes.dart';

import '../../constants/app_paddings.dart';

class CommonPageBoilerPlate extends StatelessWidget {

  const CommonPageBoilerPlate({
    super.key,
    this.pageBody,
    this.commonAppBar,
    this.horizontalPadding = AppPaddings.p20,
    this.appBarPreferredSize = kToolbarHeight + 110,
    this.isNeedToApplySafeArea = true,
  });

  /// Optional widget to be displayed as page body.
  final Widget? pageBody;

  /// Optional widget to be displayed as app bar.
  final Widget? commonAppBar;

  /// horizontalPadding = 20,
  final double horizontalPadding;

  /// appBarPreferredSize = 44,
  final double appBarPreferredSize;

  /// isNeedToApplySafeArea = true,
  final bool isNeedToApplySafeArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCodes.whiteColor,
      resizeToAvoidBottomInset: true,
      appBar: (commonAppBar != null)
          ? PreferredSize(
        preferredSize: Size.fromHeight(appBarPreferredSize.h),
        child: commonAppBar!,
      )
          : null,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 0.8.sh,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
                child: pageBody,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

