import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController

  final count = 0.obs;

  var isChecked = true.obs;

  var isPasswordVisible = false.obs;
  var userNameController = TextEditingController();
  var passwordControlelr = TextEditingController();

  void increment() => count.value++;
}
