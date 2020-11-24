import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_mobile.dart';
import 'navbar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState;

  const NavigationBar({Key key, this.scaffoldState}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(
        scaffoldState: scaffoldState,
      ),
      tablet: NavigationTabletDesktop(),
    );
  }
}
