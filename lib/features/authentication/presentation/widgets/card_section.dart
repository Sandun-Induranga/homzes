import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/color_codes.dart';
import '../../../../core/utils/assets.dart';
import 'detail_card.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172.h,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DetailCard(
              icon: Assets.rent,
              title: "Rent",
              color: ColorCodes.rentCardColor,
            ),
            DetailCard(
              icon: Assets.buy,
              title: "Buy",
              color: ColorCodes.buyCardColor,
            ),
            DetailCard(
              icon: Assets.sell,
              title: "Sell",
              color: ColorCodes.saleCardColor,
            ),
          ],
        ),
      ),
    );
  }
}

