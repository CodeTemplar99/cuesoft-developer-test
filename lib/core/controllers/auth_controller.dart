import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/services/auth_service.dart';

class AuthController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthService service = Get.find();

  Rx<String?> loggedInUserEmail = Rx<String?>(null);

  RxBool loggingIn = RxBool(false);

  Future<bool> loginIn() async {
    loggingIn.value = true;
    await service.login();
    loggingIn.value = false;
    loggedInUserEmail.value = emailController.text;
    return true;
  }
}
