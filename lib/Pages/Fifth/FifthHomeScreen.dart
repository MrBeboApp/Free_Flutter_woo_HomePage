import 'package:flutter/material.dart';

class FifthHomeScreen extends StatefulWidget {
  @override
  _FifthHomeScreenState createState() => _FifthHomeScreenState();
}

//Static Data Here
Color _MainColor = Color(0xff002638);

Color _ViolaColor = Color(0xff5B4DD2);
Color _DarkWhiteColor = Color(0xffEDEDEF);

List<String> myImageUrl = [
  'https://images.unsplash.com/photo-1579828898622-446b9d65ff73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3747&q=80',
  'https://images.unsplash.com/photo-1522273400909-fd1a8f77637e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3100&q=80',
  'https://images.unsplash.com/photo-1570569962804-5377da5be035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2324&q=80',
  'https://images.unsplash.com/photo-1585155770447-2f66e2a397b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3589&q=80',
  'https://images.unsplash.com/photo-1588680388356-127f57196ca8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1575&q=80',
  'https://images.unsplash.com/photo-1532947974358-a218d18d8d14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3750&q=80',
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
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      _SectionCard(myTitles[0], myicons[0], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[1], myicons[1], _DarkWhiteColor,
                          _MainColor, _MainColor),
                      _SectionCard(myTitles[2], myicons[2],
                          _ViolaColor.withOpacity(0.7), _MainColor, _MainColor),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Best products fans like',
                              style: TextStyle(
                                  color: _ViolaColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('best Jeans Selling ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      Text('SEE MORE  ',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  )),
                ),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      _ProductCard(myImageUrl[0]),
                      _ProductCard(myImageUrl[1]),
                      _ProductCard(myImageUrl[2]),
                      _ProductCard(myImageUrl[3]),
                      _ProductCard(myImageUrl[4]),
                      _ProductCard(myImageUrl[5]),
                    ],
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
              borderRadius: BorderRadius.circular(80),
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

  Widget _ProductCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: _DarkWhiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'The Product Title',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: Text(
                  'In This Time we Like This Product Title',
                  style: TextStyle(
                      color: _MainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  height: 200,
                  decoration: BoxDecoration(
                    color: _DarkWhiteColor,
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
