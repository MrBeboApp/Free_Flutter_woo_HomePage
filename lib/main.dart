import 'package:flutter/material.dart';
import 'package:woohome/Pages/Sixth/SixthHomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Woo Home Pages',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: FirstHome(),
      //home: SecondHome(),
      //home: ThirdHomeScreen(),
      //home: FourthHomeScreen(),
      //home: FifthHomeScreen(),
      home: SixthHomePage(),
    );
  }
}
