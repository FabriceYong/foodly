import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/constants/constants.dart';

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
      body: SafeArea(child: CustomContainer(child: Container())),
    );
  }
}
