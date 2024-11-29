import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController

  final count = 0.obs;

  var isChecked = true.obs;

  var isPasswordVisible = true.obs;
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  void increment() => count.value++;
}
