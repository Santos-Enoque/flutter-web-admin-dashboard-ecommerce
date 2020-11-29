import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
  String currentPage = "home";

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  change(){
    currentPage = "changed value";
  }


  void goBack() {
    return navigatorKey.currentState.pop();
  }


}