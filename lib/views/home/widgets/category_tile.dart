import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/categories/widgets/category_page.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.leftToRightWithFade,
            duration: const Duration(milliseconds: 900));
      },
      leading: CircleAvatar(
        backgroundColor: kGrayLight,
        child: Image.network(
          categories[index]['imageUrl'],
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        categories[index]['title'],
        style: appStyle(12, kGray, FontWeight.normal),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15.r,
        color: kGray,
      ),
    );
  }
}
