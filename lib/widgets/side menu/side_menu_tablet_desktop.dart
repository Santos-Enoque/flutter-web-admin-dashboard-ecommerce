import 'package:ecommerce_admin_tut/locator.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:ecommerce_admin_tut/services/navigation_service.dart';
import 'package:ecommerce_admin_tut/widgets/navbar/navbar_logo.dart';
import 'package:ecommerce_admin_tut/widgets/side%20menu/side_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.indigo.shade600
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200], offset: Offset(3, 5), blurRadius: 17)
          ]),
      width: 250,
      child: Container(
        child: Column(
          children: [
            NavBarLogo(),

            SideMenuItemDesktop(
              icon: Icons.dashboard,
              text: 'Dashboard',
              active: true,
              onTap: () {
                locator<NavigationService>().navigateTo(HomeRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.people,
              text: 'Users',
              active: false,
              onTap: () {
                locator<NavigationService>().navigateTo(UsersRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.shopping_cart,
              text: 'Orders',
              active: false,
              onTap: () {
                locator<NavigationService>().navigateTo(OrdersRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.category,
              text: 'Products',
              active: false,
              onTap: () {
                locator<NavigationService>().navigateTo(ProductsRoute);
              },
            ),

          ],
        ),
      ),
    );
  }
}
