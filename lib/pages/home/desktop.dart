import 'package:ecommerce_admin_tut/widgets/cards/cards_list.dart';
import 'package:ecommerce_admin_tut/widgets/custom_text.dart';
import 'package:ecommerce_admin_tut/widgets/page_header.dart';
import 'package:ecommerce_admin_tut/widgets/charts/sales_chart.dart';
import 'package:ecommerce_admin_tut/widgets/top_buyer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PageHeader(text: "DASHBOARD",),
        CardsList(),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: SalesChart()),

              Container(
                width:  MediaQuery.of(context).size.width / 4,
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