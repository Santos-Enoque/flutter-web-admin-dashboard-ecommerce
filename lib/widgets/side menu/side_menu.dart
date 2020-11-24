import 'package:ecommerce_admin_tut/widgets/side%20menu/side_menu_mobile.dart';
import 'package:ecommerce_admin_tut/widgets/side%20menu/side_menu_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SideMenuMobile(),
      tablet: SideMenuTabletDesktop(),
    );
  }
}
