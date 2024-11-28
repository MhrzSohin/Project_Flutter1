import 'package:flutter/material.dart';
import 'package:flutterproject1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Get.height,
        width: Get.width,
        // decoration:
        // const  BoxDecoration(color: Color.fromRGBO(1, 244, 41, 0.929)),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset(
                "assets/logo/logo.png",
                height: 107,
                width: 107,
              ),
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Don’t worry! It happens. Please enter the email associated with your account.",
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                  child: const Text("Send Code")),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Remember Password?",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.offNamed(Routes.SIGNIN);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
