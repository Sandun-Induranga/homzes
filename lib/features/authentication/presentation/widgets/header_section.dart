import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/color_codes.dart';
import '../../../../core/utils/assets.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.logo,
          width: 96.w,
        ),
        Container(
          width: 50.r,
          height: 50.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(
              color: Colors.white,
              width: 1.r,
            ),
          ),
          child: Icon(
            Icons.menu,
            color: ColorCodes.whiteColor,
            size: 24.r,
          ),
        ),
      ],
    );
  }
}

