import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 50,
        width: 100,
        child: Image.asset(
          "images/logo.png",
        ),
      ),
    );
  }
}
