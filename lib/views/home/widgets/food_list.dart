import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/food_widget.dart';
import 'package:gap/gap.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView.separated(
        itemCount: foods.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const Gap(5),
        itemBuilder: (_, index) {
          return FoodWidget(
              image: foods[index]['imageUrl'],
              title: foods[index]['title'],
              time: foods[index]['time'],
              price: foods[index]['price'].toStringAsFixed(2));
        },
      ),
    );
  }
}
