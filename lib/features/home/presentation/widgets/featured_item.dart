import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/features/home/data/model/property.dart';
import 'package:homzes/features/home/presentation/widgets/item_label.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
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
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            image: DecorationImage(
              image: NetworkImage(property.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment:
                isViewAll ? Alignment.bottomRight : Alignment.bottomRight,
            child: Row(
              mainAxisAlignment:
                  isViewAll ? MainAxisAlignment.start : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (isViewAll)
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                  ),
                if (isViewAll) ItemLabel(value: "${property.beds} Beds"),
                if (isViewAll) ItemLabel(value: "${property.baths} Bathroom"),
                ItemLabel(value: "\$ ${property.price}"),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              property.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (isViewAll)
              Text(
                "\$ ${property.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (isOffers)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.star_border, color: Colors.green),
                  RichText(
                    text: const TextSpan(
                      text: "4.9",
                      style: TextStyle(color: Colors.green),
                      children: [
                        TextSpan(
                          text: " (29 reviews)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
