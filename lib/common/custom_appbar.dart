import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kSecondary,
                  backgroundImage:
                      const AssetImage('assets/images/mrs-bond.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Deliver to',
                        style: TextStyle(
                            fontSize: 13,
                            color: kSecondary,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: const Text(
                          overflow: TextOverflow.ellipsis,
                          '16768 21st Ave N, Plymouth, MN 55447',
                          style: TextStyle(
                            color: kGrayLight,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              '❄️',
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
