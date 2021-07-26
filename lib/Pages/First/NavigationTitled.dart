import 'package:flutter/material.dart';

class NavigationTitled extends StatefulWidget {
  @override
  _NavigationTitledState createState() => _NavigationTitledState();
}

class _NavigationTitledState extends State<NavigationTitled> {

  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
    type:BottomNavigationBarType.fixed,
    currentIndex: _currentIndex,
    selectedItemColor: Colors.redAccent,
 
      items: [
    BottomNavigationBarItem(
      icon:Icon(Icons.mail,),
      label: 'Contact',
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.flash_auto,),
      label: 'Trend',
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.home,),
      label: 'Home',
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.search,),
      label: 'Search',
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.chat),
      label:'Blog',
      backgroundColor: Colors.white,
    ),
  
    ],
    onTap: (index){

      setState(() {
       _currentIndex = index;
      });

    },
    );
  }
}