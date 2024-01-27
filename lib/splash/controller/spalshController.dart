import 'package:get/get.dart';
import '../../tailor/auth/view/login.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashService();
  }

  void splashService() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.to(() => LoginScreen());

  }

}
