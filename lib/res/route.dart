import 'package:flutter/material.dart';
import 'package:tailors/tailor/auth/view/signUp.dart';

import '../splash/view/splashScreen.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {


    /// main routes
    SplashView.route: (p0) => SplashView(),

    /// client route
    SignupScreen.route: (p0) => SignupScreen(),

  };
}
