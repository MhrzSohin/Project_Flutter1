import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          controller.args[0] + "\n" + controller.args[1],
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
