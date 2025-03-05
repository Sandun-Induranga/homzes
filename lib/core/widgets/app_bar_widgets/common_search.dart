import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/utils/extensions.dart';

import '../../constants/color_codes.dart';
import '../../utils/assets.dart';

class CommonSearch extends StatelessWidget {
  const CommonSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorCodes.whiteColor,
          hintText: "Search",
          hintStyle: context.theme.textTheme.titleMedium!.copyWith(
            color: ColorCodes.searchTextColor,
          ),
          prefixIcon: Container(
            margin: EdgeInsets.only(left: AppPaddings.p12.w),
            padding: EdgeInsets.all(AppPaddings.p12.r),
            child: Image.asset(
              Assets.search,
              width: 24.r,
              height: 24.r,
              fit: BoxFit.contain,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

