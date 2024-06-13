import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurants_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondary,
        elevation: .3,
        title: Text(
          'Nearby Restaurants',
          style: appStyle(13, kLightWhite, FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.h),
          child: ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (_, index) {
              return RestaurantsTile(
                  restaurant: restaurants[index], onTap: () {});
            },
          ),
        ),
      ),
    );
  }
}
