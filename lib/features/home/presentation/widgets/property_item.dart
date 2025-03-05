import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/constants/color_codes.dart';
import 'package:homzes/core/utils/extensions.dart';
import 'package:homzes/core/widgets/gap_widgets/horizontal_gap_consistent.dart';
import 'package:homzes/core/widgets/gap_widgets/vertical_gap_consistent.dart';
import 'package:homzes/features/home/data/model/property.dart';
import 'package:homzes/features/home/presentation/widgets/item_label.dart';

class PropertyItem extends StatelessWidget {
  const PropertyItem({
    super.key,
    required this.property,
    this.isOffers = false,
    this.isViewAll = false,
  });

  final Property property;
  final bool isOffers;
  final bool isViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: (isOffers || isViewAll) ? 1.sw - 40.w : 150.r,
          height: (isOffers || isViewAll) ? 262.r : 150.r,
          margin: isViewAll ? EdgeInsets.zero : EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            image: DecorationImage(
              image: NetworkImage(property.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: isViewAll || isOffers
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.end,
            children: [
              if (isViewAll || isOffers)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(AppPaddings.p20.r),
                    child: Icon(
                      size: 24.r,
                      Icons.favorite_border,
                      color: ColorCodes.whiteColor,
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment:
                    isViewAll ? MainAxisAlignment.start : MainAxisAlignment.end,
                children: [
                  if (isViewAll) ItemLabel(value: "${property.beds} Beds"),
                  if (isViewAll) ItemLabel(value: "${property.baths} Bathroom"),
                  if (!isViewAll) ItemLabel(value: "\$ ${property.price}"),
                ],
              )
            ],
          ),
        ),
        VerticalGapWidget(AppPaddings.p8.h),
        SizedBox(
          width: (isOffers || isViewAll) ? 1.sw - 40.w : 150.r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: !isOffers && !isViewAll
                      ? "${property.title}\n${property.beds} Beds, ${property.baths} Bathroom"
                      : property.title,
                  style: context.theme.textTheme.titleSmall,
                  children: [
                    if (isViewAll)
                      TextSpan(
                        text: "\n${property.location}",
                        style: context.theme.textTheme.labelSmall,
                      ),
                  ],
                ),
              ),
              if (isViewAll)
                RichText(
                  text: TextSpan(
                    text: "\$ ${property.price}",
                    style: context.theme.textTheme.headlineSmall,
                    children: [
                      if (isViewAll)
                        TextSpan(
                          text: " / mo",
                          style: context.theme.textTheme.titleSmall,
                        ),
                    ],
                  ),
                ),
              if (isOffers)
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: ColorCodes.starColor,
                      size: 20.r,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "4.9",
                        style: context.theme.textTheme.labelSmall!.copyWith(
                          color: ColorCodes.blackColor,
                        ),
                        children: [
                          TextSpan(
                            text: " (29 reviews)",
                            style: context.theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    HorizontalGapWidget(AppPaddings.p4.w),
                  ],
                ),
            ],
          ),
        ),
        if (isViewAll) VerticalGapWidget(AppPaddings.p20.h),
      ],
    );
  }
}
