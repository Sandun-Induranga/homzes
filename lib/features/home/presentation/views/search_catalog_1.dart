import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homzes/core/constants/app_paddings.dart';
import 'package:homzes/core/widgets/gap_widgets/vertical_gap_consistent.dart';

import '../widgets/list_title.dart';
import '../widgets/property_list.dart';
import '../widgets/top_search.dart';

class SearchCatalog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FC),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Hi, Stanislav"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppPaddings.p20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopSearch(),
            VerticalGapWidget(AppPaddings.p20.h),
            const ListTitle(title: "Featured"),
            VerticalGapWidget(AppPaddings.p12.h),
            SizedBox(
              height: 220.h,
              child: const PropertyList(),
            ),
            VerticalGapWidget(AppPaddings.p20.h),
            const ListTitle(title: "New Offers"),
            VerticalGapWidget(AppPaddings.p12.h),
            const Expanded(
              child: PropertyList(
                isOffers: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
