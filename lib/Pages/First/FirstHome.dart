import 'package:flutter/material.dart';
import 'package:woohome/Pages/First/NavigationTitled.dart';

class FirstHome extends StatefulWidget {
  FirstHome({Key key}) : super(key: key);

  @override
  _FirstHomeState createState() => _FirstHomeState();
}

class _FirstHomeState extends State<FirstHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: Container(),
         bottomNavigationBar: NavigationTitled(),
       ),
    );
  }
}