import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/category_tile.dart';
import 'package:gap/gap.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: kGray),
        ),
        elevation: 0.0,
        backgroundColor: kOffWhite,
        centerTitle: true,
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView.separated(
            itemCount: categories.length - 1,
            separatorBuilder: (_, __) => const Gap(8),
            itemBuilder: (_, index) {
              return CategoryTile(
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
