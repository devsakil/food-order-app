import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Order App',
            theme: ThemeData(
              primarySwatch: Colors.pink,
            ),
            home: const HomePage(),
          )),
    );
  }
}
