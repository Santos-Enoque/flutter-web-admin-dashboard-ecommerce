import 'package:ecommerce_admin_tut/widgets/navbar/navbar_logo.dart';
import 'package:flutter/material.dart';


class SideMenuTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(3, 5),
                blurRadius: 17
            )
          ]),
      width: 250,
      child: Container(
        child: Column(
          children: [
            NavBarLogo(),
            ListTile(
              tileColor: Colors.blue.withOpacity(.3),
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Users"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Orders"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Products"),
            ),

          ],
        ),
      ),
    );
  }
}
