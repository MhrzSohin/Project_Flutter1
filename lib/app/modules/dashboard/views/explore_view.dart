import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExploreView extends GetView {
  const ExploreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/logo/logo.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "A Restro",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(Icons.supervised_user_circle),
          const SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ExploreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
