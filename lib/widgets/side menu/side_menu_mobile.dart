import 'package:flutter/material.dart';

class SideMenuMobile extends StatelessWidget {
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
      width: 60,
      child: Container(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: (){},
            ),IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){},
            ),IconButton(
              icon: Icon(Icons.category),
              onPressed: (){},
            ),IconButton(
              icon: Icon(Icons.notifications),
              onPressed: (){},
            ),IconButton(
              icon: Icon(Icons.person),
              onPressed: (){},
            ),IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
