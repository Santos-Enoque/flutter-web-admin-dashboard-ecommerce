import 'package:ecommerce_admin_tut/helpers/app_colors.dart';
import 'package:ecommerce_admin_tut/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class NavigationTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white,),
                    onPressed: (){},
                  ),
                  Positioned(
                    top: 5,
                    left: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white,),
                onPressed: (){},
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton.icon(
                color: Colors.green,
                icon: Icon(Icons.person, color: Colors.white,),
                onPressed: (){},
                label: CustomText(text: "Santos Enoque", color: white,),
              ),
              SizedBox(width: 20,)
              
            ],
          )
        ],
      ),
    );
  }
}
