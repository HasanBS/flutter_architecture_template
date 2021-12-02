import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../view/Splash/view/splash_view.dart';
import '../../../view/home/view/home_view.dart';

import '../../components/card/not_found_navigation_widget.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const SplashView());

      case NavigationConstants.HOME:
        return normalNavigate(const HomeView());

      // case NavigationConstants.BASKET:
      //   return normalNavigate(
      //     BasketView(requestModel: args.arguments! as RequestModel),
      //   );

      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
