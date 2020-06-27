import 'package:flutter/material.dart';

class SixthHomePage extends StatefulWidget {
  @override
  _SixthHomePageState createState() => _SixthHomePageState();
}

Color _MainColor = Color(0xffA93536);
Color _MainDarkColor = Color(0xff002638);

List<String> myImageUrl = [
  'https://images.unsplash.com/photo-1576402187878-974f70c890a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3590&q=80',
  'https://images.unsplash.com/photo-1559528896-c5310744cce8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
  'https://images.unsplash.com/photo-1525596201491-f6eae338a205?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3109&q=80',
  'https://images.unsplash.com/photo-1577859714523-5f0b6c98ece7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3528&q=80',
  'https://images.unsplash.com/photo-1585164743050-e27677e3819d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3067&q=80',
  'https://images.unsplash.com/photo-1578368531898-02087708de65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2355&q=80',
  'https://images.unsplash.com/photo-1558920558-fb0345e52561?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3456&q=80',
];

List<IconData> myicons = [
  Icons.local_pizza,
  Icons.directions_run,
  Icons.explore,
  Icons.local_library,
  Icons.accessible_forward,
  Icons.add_a_photo,
  Icons.add_to_photos,
  Icons.weekend,
];

class _SixthHomePageState extends State<SixthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          ' Resaurant Logo',
          style: TextStyle(color: _MainColor, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.restaurant_menu,
          color: _MainColor,
          size: 40,
        ),
        actions: <Widget>[
          Icon(
            Icons.fastfood,
            color: _MainColor,
            size: 40,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Choice your Best meal ',
              style: TextStyle(
                  color: _MainColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                _SectionCard(myicons[0], _MainDarkColor),
                _SectionCard(myicons[1], _MainDarkColor),
                _SectionCard(myicons[2], _MainColor),
                _SectionCard(myicons[3], _MainDarkColor),
                _SectionCard(myicons[1], _MainDarkColor),
                _SectionCard(myicons[4], _MainDarkColor),
                _SectionCard(myicons[5], _MainDarkColor),
                _SectionCard(myicons[6], _MainColor),
                _SectionCard(myicons[7], _MainDarkColor),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'PoPular ',
              style: TextStyle(
                  color: _MainColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 600,
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                _ProductCard(myImageUrl[0], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[1], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[2], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[3], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[4], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[5], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[6], _MainColor, 'Food Name', 'Type'),
                _ProductCard(myImageUrl[3], _MainColor, 'Food Name', 'Type'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Start the custum cards

  Widget _SectionCard(IconData myIcon, Color myColor) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.13,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  myIcon,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _ProductCard(
      String imageUrl, Color myColor, String title, String categoryName) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 4, left: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFF1F0F5),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 80,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                        color: _MainColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Text(categoryName,
                    style: TextStyle(
                        color: _MainColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("12 \$ ",
                    style: TextStyle(
                        color: _MainDarkColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                      color: _MainDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: IconButton(
                      color: _MainDarkColor,
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
