

import 'package:bookshop/pages/splash.dart';
import 'package:bookshop/view/main_tab/main_tab_view.dart';
import 'package:flutter/cupertino.dart';


abstract class AppRoute {
  static Route<dynamic> router(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
        );
    
      case '/news':
        return CupertinoPageRoute(
          builder: (_) => const MainTabView(),
        );
      default:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
