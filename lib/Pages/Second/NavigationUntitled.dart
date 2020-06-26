import 'package:flutter/material.dart';

class NavigationUntitled extends StatefulWidget {
  @override
  _NavigationUntitledState createState() => _NavigationUntitledState();
}

class _NavigationUntitledState extends State<NavigationUntitled> {

  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
    type:BottomNavigationBarType.fixed,
    unselectedItemColor: Colors.grey[400],
    currentIndex: _currentIndex,
    selectedItemColor: Color(0xff002638),
    elevation: 0,
 
      items: [
    BottomNavigationBarItem(
      icon:Icon(Icons.shopping_cart,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.settings_voice,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.home,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.settings,),
      title: Text(''),
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