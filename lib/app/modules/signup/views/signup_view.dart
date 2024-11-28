import 'package:flutter/material.dart';
import 'package:flutterproject1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          // decoration:
          //     const BoxDecoration(color: Color.fromRGBO(183, 244, 183, 0.929)),
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.asset(
                    "assets/logo/logo.png",
                    height: 107,
                    width: 107,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Create an account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your PhoneNumber',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Obx(
                  () => TextFormField(
                    obscureText: controller.isPasswordVisible.value,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isPasswordVisible.value =
                              !controller.isPasswordVisible.value;
                        },
                        child: Icon(controller.isPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
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
                      ),
                    ),
                    child: const Text("Sign Up"),
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                const Text("___________or continue with___________"),
                Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: OutlinedButton(
                      onPressed: () {
                        //handle onpressed
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/logo/googlelogo.png",
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 11),
                          const Text(
                            "Signup with Google",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offNamed(Routes.SIGNIN);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
