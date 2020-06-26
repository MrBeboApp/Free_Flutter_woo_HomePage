import 'package:flutter/material.dart';
import 'package:woohome/Pages/Second/NavigationUntitled.dart';

class SecondHome extends StatefulWidget {
  @override
  _SecondHomeState createState() => _SecondHomeState();
}


Color _MainColor = Color(0xff002638);
List<String> myImageUrl =[
  'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3178&q=80',
  'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80',
  'https://images.unsplash.com/photo-1560343090-f0409e92791a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1900&q=80',
  'https://images.unsplash.com/photo-1525904097878-94fb15835963?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80'
];

List<String> myTitles =[
  'Food',
  'Run',
  'Lifestyle',
  'Education'
];
List<IconData> myicons =[
  Icons.local_pizza,
  Icons.directions_run,
  Icons.explore,
  Icons.local_library

];
List<Color> myColors =[
  Colors.green,
  Colors.indigoAccent,
  Colors.brown,
  Colors.deepOrange
];



class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text('My App Name',style: TextStyle(color:_MainColor,fontWeight: FontWeight.bold),),
        
      ),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Our Categoreis ',style: TextStyle(color:_MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        Container(
          height: 80,
          child: ListView (
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
            _SectionCard(myTitles[0], myicons[0], myColors[0]),
             _SectionCard(myTitles[1], myicons[1], myColors[1]),
            _SectionCard(myTitles[2], myicons[2], myColors[2]),
             _SectionCard(myTitles[3], myicons[3], myColors[3]),


            ],
          ),
        
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hot Sale products ',style: TextStyle(color:  Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.57,
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                _ProductCard(myImageUrl[0],myColors[0] ,'The Product Title',myTitles[0]),
                _ProductCard(myImageUrl[1],myColors[3] ,'The Product Title',myTitles[1]),
                _ProductCard(myImageUrl[2],myColors[2] ,'The Product Title',myTitles[2]),
                _ProductCard(myImageUrl[3],myColors[3] ,'The Product Title',myTitles[3]),
                _ProductCard(myImageUrl[0],myColors[0] ,'The Product Title',myTitles[0]),
                _ProductCard(myImageUrl[1],myColors[3] ,'The Product Title',myTitles[1]),
                _ProductCard(myImageUrl[2],myColors[2] ,'The Product Title',myTitles[2]),

                _ProductCard(myImageUrl[3],myColors[3] ,'The Product Title',myTitles[3]),


            
                      
             ],
                
                            ),
                          ),
                        
                        ],
                      ),
                      bottomNavigationBar: NavigationUntitled(),
                      
                    );
                  }




  //Start the custum cards
                
 Widget _SectionCard (String title  , IconData myIcon ,Color myColor){
                
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                
                                           height: MediaQuery.of(context).size.height * 0.07,
                                           width: MediaQuery.of(context).size.width * 0.32,
                                           decoration: BoxDecoration(
                                            color: myColor,
                                             borderRadius: BorderRadius.circular(10),
                 
                
                                           ),
                                           child: Row(
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: <Widget>[
                                               Icon(myIcon,color: Colors.white,size: 30,),
                                                  SizedBox(
                                                 width: 10,
                                               ),
                                              
                                               Text(title,style: TextStyle(color:Colors.white,fontSize: 18),),
                                                SizedBox(
                                                 height: 4,
                                               ),
                                             ],
                                           ),
                                         ),
                
                                      
                        ],
                      ),
                    );
                  }
                
  Widget _ProductCard(String imageUrl, Color myColor , String title ,String categoryName) {
    return Padding(
      padding: const EdgeInsets.only(top:3.0,right: 15,left: 5),
      child: Container(

        decoration: BoxDecoration(
          color: Color(0xffF7F6FB),
          borderRadius: BorderRadius.circular(12),

        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: <Widget>[
            

            Container(
              height: 80,
              width: 80,
                   decoration: BoxDecoration(
                        image:  DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                          ), 
                          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[

            Text(title,style: TextStyle(color: myColor,fontSize: 12,fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(categoryName,style: TextStyle(color:  _MainColor,fontSize: 12,fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('The description that help the user to take action ',style: TextStyle(color:  Colors.grey,fontSize: 12)),
      


          ],)
          
          ],
          ),
        ),
      ),
    );
  }

}