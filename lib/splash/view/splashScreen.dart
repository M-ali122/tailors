import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/spalshController.dart';

class SplashView extends GetWidget<SplashController> {
  static const String route = 'splashView';


  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return const Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Heelo')
                // Hero(
                //   tag: 'logo',
                //   child: SvgPicture.string(
                //     Svgs.image,
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
