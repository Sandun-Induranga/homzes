import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_paddings.dart';
import '../../../../core/widgets/app_bar_widgets/common_app_bar.dart';
import '../../../../core/widgets/app_bar_widgets/common_page_boiler_plate.dart';
import '../../../../core/widgets/gap_widgets/vertical_gap_consistent.dart';
import '../widgets/list_title.dart';
import '../widgets/property_list.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPageBoilerPlate(
      commonAppBar: const CustomAppBar(
        isNeedProfileDetails: false,
      ),
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalGapWidget(AppPaddings.p20.h),
          const ListTitle(
            title: "Popular rent offers",
            isNeedViewAll: false,
          ).animate().slideX(begin: -1, duration: 600.ms),
          VerticalGapWidget(AppPaddings.p20.h),
          const Expanded(
            child: PropertyList(
              isViewAll: true,
            ),
          ).animate().slideX(begin: -1, duration: 600.ms),
        ],
      ).animate().fade(duration: 800.ms, delay: 300.ms),
    );
  }
}
