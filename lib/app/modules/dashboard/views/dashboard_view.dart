import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.pagelist[controller.currentSelectedTabIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
          ],
          currentIndex: controller.currentSelectedTabIndex.value,
          onTap: (value) {
            controller.currentSelectedTabIndex.value = value;
          },
          selectedItemColor: (Colors.green),
        ),
      ),
    );
  }
}
