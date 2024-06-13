import 'package:flutter/material.dart';
import 'package:foodly/views/cart/cart.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/tab_index_controller.dart';
import 'package:foodly/views/home/home.dart';
import 'package:foodly/views/profile/profile.dart';
import 'package:foodly/views/search/search.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    List<Widget> pageList = [
      const HomePage(),
      const SearchPage(),
      const CartPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Stack(
          children: [
            pageList[controller.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  elevation: 0.0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  iconSize: 20.0,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black54),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  currentIndex: controller.tabIndex,
                  onTap: (value) {
                    controller.setTabIndex = value;
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.grid_2), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.search_normal), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Badge(
                            label: Text('1'),
                            child: Icon(Iconsax.shopping_cart)),
                        label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.user), label: 'Profile'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
