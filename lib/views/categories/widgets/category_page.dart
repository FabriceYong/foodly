
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(CupertinoIcons.back),),
        title: const Text(
          'Category Page',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: kGray),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: kOffWhite,
      ),
      body: const Center(
        child: Text('Category Page'),
      ),
    );
  }
}
