import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool _isLoading = false.obs;

  RxBool get isLoading => _isLoading;

  void change() {
    _isLoading.value = !_isLoading.value;
  }
}
