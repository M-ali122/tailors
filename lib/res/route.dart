import 'package:flutter/material.dart';

import '../splash/view/splashScreen.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {


    /// main routes
    SplashView.route: (p0) => SplashView(),

  };
}
