import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/constants/constants.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, this.onTap, required this.food});

  final VoidCallback? onTap;
  final dynamic food;

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
                            food['imageUrl'],
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
                        food['title'],
                        style: appStyle(11, kDark, FontWeight.w400),
                      ),
                      Text(
                        'Delivery Time: ${food['time']}',
                        style: appStyle(11, kGray, FontWeight.w400),
                      ),
                      SizedBox(
                        height: 16.h,
                        width: width * .7,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: food['additives'].length,
                            itemBuilder: (_, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 5.w),
                                decoration: BoxDecoration(
                                  color: kSecondaryLight,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.r),
                                  ),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2.h, horizontal: 4.w),
                                    child: Text(
                                      food['additives'][index]['title'],
                                      style:
                                          appStyle(8, kGray, FontWeight.w400),
                                    ),
                                  ),
                                ),
                              );
                            }),
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
                color: kPrimary,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                '\$${food['price'].toStringAsFixed(2)}',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: appStyle(12, kLightWhite, FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            right: 75.w,
            top: 6.h,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 20.w,
                height: 20.h,
                decoration: BoxDecoration(
                  color: kSecondary,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: kLightWhite,
                    size: 15.h,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
