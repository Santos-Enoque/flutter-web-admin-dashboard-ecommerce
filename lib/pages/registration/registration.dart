import 'package:ecommerce_admin_tut/provider/auth.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:ecommerce_admin_tut/services/navigation_service.dart';
import 'package:ecommerce_admin_tut/widgets/custom_text.dart';
import 'package:ecommerce_admin_tut/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final authProvider = Provider.of<AuthProvider>(context);

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.indigo.shade600
              ]
          )

      ),
      child: authProvider.status == Status.Authenticating? Loading() :Scaffold(
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
              height: 420,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "REGISTRATION", size: 22, weight: FontWeight.bold,),
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
                          controller: authProvider.name,
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
                          controller: authProvider.email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'email',
                              icon: Icon(Icons.email_outlined)
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
                          controller: authProvider.password,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              icon: Icon(Icons.lock_open)
                          ),
                        ),
                      ),
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
                        onPressed: ()async{
                                  if(!await authProvider.signUp()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Registration failed!"))

                    );
                    return;
                  }
                  authProvider.clearController();

                          locator<NavigationService>().globalNavigateTo(LayoutRoute, context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:4),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: "REGISTER", size: 22, color: Colors.white, weight: FontWeight.bold,),
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
                        CustomText(text: "Already have an account? ", size: 16,color: Colors.grey,),
                        GestureDetector(
                            onTap: (){
                              locator<NavigationService>().globalNavigateTo(LoginRoute, context);
                            },
                            child: CustomText(text: "Sign in here.. ", size: 16,color: Colors.indigo,)),

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
