import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/utils/extensions.dart';
import 'package:homzes/core/widgets/gap_widgets/vertical_gap_consistent.dart';
import 'package:homzes/features/authentication/presentation/widgets/card_section.dart';
import 'package:homzes/features/authentication/presentation/widgets/create_account_button.dart';

import '../../../../core/utils/assets.dart';
import '../widgets/header_section.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.74,
                image: AssetImage(Assets.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPaddings.p20.w,
              vertical: AppPaddings.p40.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderSection(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Find the best place for you",
                      style: context.theme.textTheme.headlineLarge,
                    ),
                    VerticalGapWidget(AppPaddings.p64.h),
                    const CardSection(),
                    VerticalGapWidget(AppPaddings.p20.h),
                    const CreateAccountButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
