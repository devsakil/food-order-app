import 'package:flutter/material.dart';
import 'package:food_order_app/homepage.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Sizer(
        builder: ((context, orientation, deviceType) => const HomePage()),
      ),
    );
  }
}
