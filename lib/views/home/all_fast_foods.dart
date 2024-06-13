import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/foods_tile.dart';

class AllFastFoods extends StatelessWidget {
  const AllFastFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kSecondary,
        title: Text(
          'All Fast Foods',
          style: appStyle(13, kLightWhite, FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (_, index) {
              return FoodTile(food: foods[index]);
            },
          ),
        ),
      ),
    );
  }
}
