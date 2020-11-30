import 'package:ecommerce_admin_tut/pages/users/users_page.dart';
import 'package:ecommerce_admin_tut/widgets/bar_chart_widget.dart';
import 'package:ecommerce_admin_tut/widgets/card_item.dart';
import 'package:ecommerce_admin_tut/widgets/page_header.dart';
import 'package:ecommerce_admin_tut/widgets/revenue_chart.dart';
import 'package:ecommerce_admin_tut/widgets/sales_chart.dart';
import 'package:ecommerce_admin_tut/widgets/custom_text.dart';
import 'package:ecommerce_admin_tut/widgets/top_buyer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [
      PageHeader(text: 'DASHBOARD',),
          Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 600,
                    width: 1075,
                    child: SalesChart()),

                Container(
                  width: 500,
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(0, 3),
                            blurRadius: 16
                        )
                      ]),
                  child: Column(
                    children: [
                      CustomText(text: 'Top Buyers', size: 30,),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                      TopBuyerWidget(),
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      );
  }
}
