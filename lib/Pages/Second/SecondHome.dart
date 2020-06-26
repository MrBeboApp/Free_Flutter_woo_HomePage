import 'package:flutter/material.dart';
import 'package:woohome/Pages/Second/NavigationUntitled.dart';

class SecondHome extends StatefulWidget {
  @override
  _SecondHomeState createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      bottomNavigationBar: NavigationUntitled(),
      
    );
  }
}