import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgetpassword_controller.dart';

class ForgetpasswordView extends GetView<ForgetpasswordController> {
  const ForgetpasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetpasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgetpasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
