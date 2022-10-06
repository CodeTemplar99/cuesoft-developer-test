import 'package:get/get.dart';
import 'package:test_app/core/services/auth_service.dart';

import 'controllers/auth_controller.dart';

class Core {
  static initialize() {
    Get.put(AuthService());
    Get.put(AuthController());
  }
}
