import 'package:ecommerce_admin_tut/pages/login.dart';
import 'package:ecommerce_admin_tut/provider/app_provider.dart';
import 'package:ecommerce_admin_tut/widgets/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppProvider.init()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
