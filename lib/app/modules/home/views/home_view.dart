import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image

          CircleAvatar(
            radius: 90,
            child: Image.asset(
              "assets/logo/logo.png",
              height: 181,
              width: 181,
            ),
          ),

          const SizedBox(
            height: 27,
          ),

          const Text(
            "ARastro",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              onPressed: () {
                // go to signin page
                Get.toNamed(Routes.SIGNIN);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text("Log in"),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.SIGNUP);
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  foregroundColor: Colors.grey,
                  side: const BorderSide(color: Colors.grey),
                ),
                child: const Text("Sign up")),
          ),
        ],
      )),
    );
  }
}
