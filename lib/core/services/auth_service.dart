import 'package:get/get.dart';

class AuthService extends GetConnect {
  final String baseURL = 'http://restapi.adequateshop.com/api';

  Future<Response> login() => post('$baseURL/authaccount/login', {});
}
