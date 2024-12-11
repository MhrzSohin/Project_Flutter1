import 'package:flutterproject1/app/modules/dashboard/controllers/DataModel.dart';
import 'package:flutterproject1/app/modules/dashboard/views/cart_view.dart';
import 'package:flutterproject1/app/modules/dashboard/views/explore_view.dart';
import 'package:flutterproject1/app/modules/dashboard/views/search_items_view.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final count = 0.obs;
  var currentSelectedTabIndex = 0.obs;
  var pagelist = [
    const ExploreView(),
    const SearchItemsView(),
    const CartView()
  ];
}
