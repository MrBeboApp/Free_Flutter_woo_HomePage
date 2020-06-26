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
      title: Text('Contact'),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.flash_auto,),
      title: Text('Trend'),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.home,),
      title: Text('Home'),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.search,),
      title: Text('Search'),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.chat),
      title: Text('Blog'),
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