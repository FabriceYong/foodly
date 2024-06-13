import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/Recommendations.dart';
import 'package:foodly/views/home/all_fast_foods.dart';
import 'package:foodly/views/home/all_nearby_restaurants.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/food_list.dart';
import 'package:foodly/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const SizedBox( 
          height: 130,
          child: CustomAppBar(),
        ),
      ),
      body: SafeArea(
        child: CustomContainer(
          child: Column(
            children: [
              const CategoryList(),

              /// All Nearby Restaurants
              Heading(
                text: 'Nearby Restaurants',
                onPressed: () => Get.to(() => const AllNearbyRestaurants(),
                    transition: Transition.fadeIn,
                    duration: const Duration(milliseconds: 900)),
              ),
              const NearbyRestaurants(),

              /// Recommendations
              Heading(
                text: 'Try something new',
                onPressed: () => Get.to(
                  () => const  Recommendations(),
                  transition: Transition.fadeIn,
                  duration: const Duration(milliseconds: 900),
                ),
              ),
              const FoodList(),

              /// All Fast foods
              Heading(
                text: 'Fastest food closer to you',
                onPressed: () => Get.to(
                  () => const AllFastFoods(),
                  transition: Transition.fadeIn,
                  duration: const Duration(milliseconds: 900),
                ),
              ),
              const NearbyRestaurants(),
            ],
          ),
        ),
      ),
    );
  }
}
