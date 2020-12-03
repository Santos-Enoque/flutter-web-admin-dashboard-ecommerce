import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  Future<dynamic> globalNavigateTo(String routeName, BuildContext context) {
    return Navigator.of(context).pushNamed(routeName);
  }


  void goBack() {
    return navigatorKey.currentState.pop();
  }


}