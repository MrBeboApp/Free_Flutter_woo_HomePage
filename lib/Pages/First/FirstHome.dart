import 'package:flutter/material.dart';
import 'package:woohome/Pages/First/NavigationTitled.dart';

class FirstHome extends StatefulWidget {
  FirstHome({Key key}) : super(key: key);

  @override
  _FirstHomeState createState() => _FirstHomeState();
}

Color _mainDarkColor = Color(0xff002638);

class _FirstHomeState extends State<FirstHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //The Header Content
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.polymer,
                color: _mainDarkColor,
                size: 50,
              ),
              onPressed: () {}),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Home Page Title',
                    style: TextStyle(
                        color: _mainDarkColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'We are Happy ',
                    style: TextStyle(color: _mainDarkColor, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Edit the content of small Cart
                  _smallCartInfo(
                      'Followers', '56K', Icons.person, Colors.redAccent),
                  _smallCartInfo(
                      'Comments', '875', Icons.comment, Colors.blueAccent),
                  _smallCartInfo('Following', '576K', Icons.person_add,
                      Colors.deepPurpleAccent),
                  _smallCartInfo('Content', '16K', Icons.picture_as_pdf,
                      Colors.deepPurple),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //Titel of the main section

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Main Content',
                    style: TextStyle(
                        color: _mainDarkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),

              //Create the Main Card Content

              _MainCard(
                  'https://images.unsplash.com/photo-1562117906-7d850fcf80aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1184&q=80'),
              _MainCard(
                  'https://images.unsplash.com/photo-1566654108568-958bce3400b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
              _MainCard(
                  'https://images.unsplash.com/photo-1534029731425-0d646dd67df3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1533&q=80'),
              _MainCard(
                  'https://images.unsplash.com/photo-1581093683496-7d03189c8291?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
              _MainCard(
                  'https://images.unsplash.com/photo-1587613990174-1f14ba3be7cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
              _MainCard(
                  'https://images.unsplash.com/photo-1535162302410-06925eb159f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
            ],
          ),
        ),
        bottomNavigationBar: NavigationTitled(),
      ),
    );
  }

  //Create the Small cart Of Info

  Widget _smallCartInfo(
      String title, String subTitle, IconData myIcon, Color myColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.20,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  myIcon,
                  color: Colors.white,
                  size: 22,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _MainCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.60,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              height: 500,
              color: Colors.white.withOpacity(0.3),
            ),
            Center(
                child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.play_circle_filled,
                color: Colors.redAccent,
                size: 80,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'The Main title of content',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
