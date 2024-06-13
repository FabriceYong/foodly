import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/constants/constants.dart';
import 'package:gap/gap.dart';

class RestaurantsTile extends StatelessWidget {
  const RestaurantsTile({super.key, this.onTap, required this.restaurant});

  final VoidCallback? onTap;
  final dynamic restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kLightWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.r),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 70.h,
                          width: 70.w,
                          child: Image.network(
                            restaurant['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          width: width,
                          child: Container(
                            padding: EdgeInsets.only(left: 4.w, bottom: 2.h),
                            color: kGray.withOpacity(.6),
                            height: 16.h,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (_, index) => const Icon(
                                Icons.star,
                                color: kSecondary,
                              ),
                              itemSize: 13.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant['title'],
                        style: appStyle(11, kDark, FontWeight.w400),
                      ),
                      Text(
                        'Delivery Time: ${restaurant['time']}',
                        style: appStyle(11, kGray, FontWeight.w400),
                      ),
                      SizedBox(
                        width: width * .7,
                        child: Text(restaurant['coords']['address'],
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(9, kGray, FontWeight.w400)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 5.w,
            top: 6.h,
            child: Container(
              width: 60.w,
              height: 19.h,
              decoration: BoxDecoration(
                color: restaurant['isAvailable'] == true
                    ? kPrimary
                    : restaurant['isAvailable'] == false
                        ? kRed.withOpacity(.6)
                        : kGrayLight,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                restaurant['isAvailable'] == true
                    ? 'Open'
                    : restaurant['isAvailable'] == false
                        ? 'Closed'
                        : 'Unavailable',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: appStyle(12, kLightWhite, FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
