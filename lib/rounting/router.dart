
import '../pages/home/home_page.dart';
import '../pages/orders/orders_page.dart';
import '../pages/products/products_page.dart';
import '../pages/users_page.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage());
    case UsersRoute:
      return _getPageRoute(UsersPage());
    case ProductsRoute:
      return _getPageRoute(ProductsPage());
    case OrdersRoute:
      return _getPageRoute(OrdersPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}