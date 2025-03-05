import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/widgets/gap_widgets/vertical_gap_consistent.dart';

import '../../../../core/widgets/app_bar_widgets/common_app_bar.dart';
import '../../../../core/widgets/app_bar_widgets/common_page_boiler_plate.dart';
import '../widgets/list_title.dart';
import '../widgets/property_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPageBoilerPlate(
      commonAppBar: const CustomAppBar(
        isNeedProfileDetails: true,
      ),
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalGapWidget(AppPaddings.p20.h),
          const ListTitle(title: "Featured").animate().slideX(begin: -1, duration: 600.ms),
          VerticalGapWidget(AppPaddings.p12.h),
          SizedBox(
            height: 210.h,
            child: const PropertyList(),
          ),
          VerticalGapWidget(AppPaddings.p20.h),
          const ListTitle(title: "New Offers").animate().slideX(begin: -1, duration: 600.ms),
          VerticalGapWidget(AppPaddings.p12.h),
          const Expanded(
            child: PropertyList(
              isOffers: true,
            ),
          ),
        ],
      ).animate().fade(duration: 800.ms, delay: 300.ms),
    );
  }
}
