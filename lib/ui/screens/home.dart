import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/controllers/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.find();
    return Scaffold(
        body: Center(
      child: Text(
        "Hi ${controller.loggedInUserEmail.value ?? 'there'}\nWelcome to Cuesoft Developer test",
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    ));
  }
}
