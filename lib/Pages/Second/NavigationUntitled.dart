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
    currentIndex: _currentIndex,
    selectedItemColor: Colors.redAccent,
 
      items: [
    BottomNavigationBarItem(
      icon:Icon(Icons.mail,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.flash_auto,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.home,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.search,),
      title: Text(''),
      backgroundColor: Colors.white,
    ),
        BottomNavigationBarItem(
      icon:Icon(Icons.chat),
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