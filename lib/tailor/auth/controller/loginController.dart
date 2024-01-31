// import 'package:get/get.dart';
//
// class LoginController extends GetxController {
//   var username = ''.obs;
//   var password = ''.obs;
//
//   var isLoggingIn = false.obs;
//
//
//
//   void setUsername(String value) => username.value = value;
//   void setPassword(String value) => password.value = value;
//
//   void login() async {
//
//     isLoggingIn.value = true;
//
//     // Replace this with your actual login logic
//     await Future.delayed(Duration(seconds: 2));
//
//     // Simulate a successful login
//     isLoggingIn.value = false;
//
//     // Navigate to the home screen (replace 'HomeScreen' with the actual screen name)
// //    Get.off(() => HomeScreen());
//   }
// }
import 'package:get/get.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  // Observable for error messages
  var usernameError = RxString('');
  var passwordError = RxString('');

  var isLoggingIn = false.obs;

  void setUsername(String value) {
    username.value = value;
    // Validate username (replace this with your validation logic)
    if (value.isEmpty) {
      usernameError.value = 'Username is required';
    } else {
      usernameError.value = '';
    }
  }

  void setPassword(String value) {
    password.value = value;
    // Validate password (replace this with your validation logic)
    if (value.isEmpty) {
      passwordError.value = 'Password is required';
    } else {
      passwordError.value = '';
    }
  }

  void login() async {
    // Check if there are any validation errors
    if (usernameError.isNotEmpty || passwordError.isNotEmpty) {

      return; // Stop login process if there are validation errors
    }

    isLoggingIn.value = true;

    // Replace this with your actual login logic
    await Future.delayed(Duration(seconds: 2));

    // Simulate a successful login
    isLoggingIn.value = false;

    // Navigate to the home screen (replace 'HomeScreen' with the actual screen name)
    // Get.off(() => HomeScreen());
  }
}
