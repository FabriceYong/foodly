import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurant_widget.dart';
import 'package:gap/gap.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 10.w, top: 10.h),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        separatorBuilder: (_, __) => const Gap(5),
        itemBuilder: (_, index) {
          return RestaurantWidget(
            image: restaurants[index]['imageUrl'] as String,
            logo: restaurants[index]['logoUrl'] as String,
            title: restaurants[index]['title'] as String,
            time: restaurants[index]['time'] as String,
            rating: restaurants[index]['ratingCount'] as String,
          );
        },
      ),
    );
  }
}
