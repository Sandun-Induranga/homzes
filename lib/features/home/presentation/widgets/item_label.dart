import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemLabel extends StatelessWidget {
  const ItemLabel({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Text(
        value,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
