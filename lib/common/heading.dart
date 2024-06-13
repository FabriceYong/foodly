import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/constants/constants.dart';
import 'package:iconsax/iconsax.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Text(
              text,
              style: appStyle(16, kDark, FontWeight.bold),
            ),
          ),

          // Icon
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.more_circle,
              size: 25.sp,
              color: kSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
