import 'package:ecommerce_admin_tut/locator.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:ecommerce_admin_tut/services/navigation_service.dart';
import 'package:ecommerce_admin_tut/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.indigo.shade600
          ]
        )
            
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            color: Colors.red,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),

                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 3), blurRadius: 24)
                  ]),
              height: 400,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "LOGIN", size: 22, weight: FontWeight.bold,),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            icon: Icon(Icons.person_outline)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              icon: Icon(Icons.lock_open)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(text: "Forgot password?", size: 16,color: Colors.grey,),
                      ],
                    ),
                  ),

                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo
                      ),
                      child: FlatButton(
                        onPressed: (){
                          locator<NavigationService>().globalNavigateTo(LayoutRoute, context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:4),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: "LOGIN", size: 22, color: Colors.white, weight: FontWeight.bold,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: "Do not have an account? ", size: 16,color: Colors.grey,),
                        GestureDetector(
                            onTap: (){
                              locator<NavigationService>().globalNavigateTo(RegistrationRoute, context);
                            },
                            child: CustomText(text: "Sign up here. ", size: 16,color: Colors.indigo,)),

                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
