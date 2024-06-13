import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/foods_tile.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondary,
          elevation: .3,
          title: Text(
            'Recommendations',
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
        ));
  }
}
