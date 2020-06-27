import 'package:flutter/material.dart';

class FifthHomeScreen extends StatefulWidget {
  @override
  _FifthHomeScreenState createState() => _FifthHomeScreenState();
}

//Static Data Here
Color _MainColor = Color(0xff002638);

Color _ViolaColor = Color(0xff5B4DD2);
Color _DarkWhiteColor = Color(0xffF7F6FB);

List<String> myImageUrl = [
  'https://images.unsplash.com/photo-1491508624904-7669836a24ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3449&q=80',
  'https://images.unsplash.com/photo-1476055090065-a605fefd840e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3000&q=80',
  'https://images.unsplash.com/photo-1562657548-fcab42b43035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1532&q=80',
  'https://images.unsplash.com/photo-1552225193-d1808c1c72d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
  'https://images.unsplash.com/photo-1585944348450-35593b4c836d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
];

List<String> myTitles = ['Fashion', 'Shoses', 'Skrill', 'Jeans', 'Dress'];
List<IconData> myicons = [
  Icons.business_center,
  Icons.airline_seat_legroom_normal,
  Icons.accessibility,
  Icons.mood_bad,
  Icons.adb
];
List<Color> myColors = [
  _ViolaColor,
  _DarkWhiteColor,
  _DarkWhiteColor,
  _DarkWhiteColor
];

class _FifthHomeScreenState extends State<FifthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _ViolaColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.atm,
            color: Colors.white,
            size: 60,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.apps,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
              color: _ViolaColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
              child: custumTextField(
                  'Search ...', Icon(Icons.search, color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      _SectionCard(myTitles[0], myicons[0], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[1], myicons[1], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[2], myicons[2], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[3], myicons[3], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[4], myicons[4], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[0], myicons[0], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[2], myicons[2], _DarkWhiteColor,
                          _MainColor, _MainColor),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Start the custom cards and Fields

  //You can edit the Custom Input Text Field from Here

  Widget custumTextField(String hint, Icon iconName) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: _DarkWhiteColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                fillColor: _DarkWhiteColor.withOpacity(0),
                filled: true,
                hintText: hint,
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: iconName),
          ),
        ),
      ],
    );
  }

  Widget _SectionCard(String title, IconData myIcon, Color myColor,
      Color btnColor, Color contentColor) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Icon(
                  myIcon,
                  color: contentColor,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: contentColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ProductCard(
      String imageUrl, Color myColor, String title, String categoryName) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 15, left: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF7F6FB),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(
                              color: myColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(categoryName,
                          style: TextStyle(
                              color: _MainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text('The description that help the user to take action ',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('25 Min',
                              style: TextStyle(color: myColor, fontSize: 10)),
                          SizedBox(
                            width: 40,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.bookmark,
                                color: _ViolaColor,
                              ),
                              Text(
                                '3 days Delievry',
                                style: TextStyle(color: _ViolaColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
