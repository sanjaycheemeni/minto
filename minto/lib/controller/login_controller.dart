import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
