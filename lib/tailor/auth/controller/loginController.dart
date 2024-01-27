import 'package:get/get.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  var isLoggingIn = false.obs;

  void setUsername(String value) => username.value = value;
  void setPassword(String value) => password.value = value;

  void login() async {
    // Simulate an asynchronous login process
    isLoggingIn.value = true;

    // Replace this with your actual login logic
    await Future.delayed(Duration(seconds: 2));

    // Simulate a successful login
    isLoggingIn.value = false;

    // Navigate to the home screen (replace 'HomeScreen' with the actual screen name)
//    Get.off(() => HomeScreen());
  }
}
