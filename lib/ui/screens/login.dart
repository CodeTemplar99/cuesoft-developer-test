import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/controllers/auth_controller.dart';
import 'package:test_app/ui/screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.find();
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text('Welcome to Cuesoft'),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                    controller.loginIn().then((success) => {
                          if (success)
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()))
                        });
                  },
                  child: Obx(() => controller.loggingIn.value
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator())
                      : const Text('Login')))
            ],
          ),
        ),
      ),
    ));
  }
}
