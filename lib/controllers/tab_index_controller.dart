import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class TabIndexController extends GetxController {
  final RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  set setTabIndex(int index) {
    _tabIndex.value = index;
  }
}
