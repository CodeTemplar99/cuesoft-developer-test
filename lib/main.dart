import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_app/core/initialize.dart';
import 'package:test_app/ui/screens/splash.dart';

void main() {
  Core.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
