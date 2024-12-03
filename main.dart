import 'package:enjoyfood/pages/CartPage.dart';
import 'package:enjoyfood/pages/ItemPage.dart';
import 'package:enjoyfood/pages/home.dart';
import 'package:flutter/material.dart';

import 'Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Hub",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        "/": (context) => Welcome(),
        "homePage": (context) => Homepage(),
        "itemPage": (context) => ItemPage(),
        "cartPage": (context) => CartPage(),
      },
      // home: Homepage(),
    );
  }
}
