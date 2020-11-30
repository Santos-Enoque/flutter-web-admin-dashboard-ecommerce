import 'package:flutter/material.dart';

import 'card_item.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return         Container(
      height: 120,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardItem(
              icon: Icons.monetization_on_outlined,
              title: "Revenue",
              subtitle: "Revenue this month",
              value: "\$ 4,323",
              color1: Colors.green.shade700,
              color2: Colors.green,
            ),

            CardItem(
              icon: Icons.shopping_basket_outlined,
              title: "Products",
              subtitle: "Total products on store",
              value: "231",
              color1: Colors.lightBlueAccent,
              color2: Colors.blue,
            ),



            CardItem(
              icon: Icons.delivery_dining,
              title: "Orders",
              subtitle: "Total orders for this month",
              value: "33",
              color1: Colors.redAccent,
              color2: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}
