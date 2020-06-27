import 'package:flutter/material.dart';

class ThirdHomeScreen extends StatefulWidget {
  @override
  _ThirdHomeScreenState createState() => _ThirdHomeScreenState();
}
//Static Data Here
Color _MainColor = Color(0xff002638);

Color _RedViolaColor = Color(0xffC70039);
Color _DarkWhiteColor = Color(0xffF7F6FB);



List<String> myImageUrl =[
  'https://images.unsplash.com/photo-1491508624904-7669836a24ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3449&q=80',
    'https://images.unsplash.com/photo-1476055090065-a605fefd840e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3000&q=80',

  'https://images.unsplash.com/photo-1562657548-fcab42b43035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1532&q=80',

  'https://images.unsplash.com/photo-1552225193-d1808c1c72d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',

  'https://images.unsplash.com/photo-1585944348450-35593b4c836d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',

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
  _RedViolaColor,
  _DarkWhiteColor,
  _DarkWhiteColor,
  _DarkWhiteColor

];


class _ThirdHomeScreenState extends State<ThirdHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.reorder,color: _RedViolaColor,size: 30,), onPressed: (){
           }),
        
      ),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Fast way to find it, Search.. ',style: TextStyle(color:_RedViolaColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          custumTextField('Search ',Icon(Icons.search,color: _RedViolaColor,)),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories ',style: TextStyle(color:_MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),


        Container(
          height: 180,
          child: ListView (
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
             _SectionCard(myTitles[1], myicons[1], myColors[1],_RedViolaColor,_MainColor),
            _SectionCard(myTitles[0], myicons[0], myColors[0],Colors.white,Colors.white),

            _SectionCard(myTitles[2], myicons[2], myColors[1],_RedViolaColor,_MainColor),
             _SectionCard(myTitles[3], myicons[3], myColors[1],_RedViolaColor,_MainColor),


            ],
          ),
        
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hot Activity ',style: TextStyle(color: _MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.57,
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                _ProductCard(myImageUrl[0],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[1],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[2],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[3],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[4],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[0],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[1],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[3],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[2],myColors[0] ,'The Event Title',myTitles[0]),
                _ProductCard(myImageUrl[0],myColors[0] ,'The Event Title',myTitles[0]),

          


            
                      
             ],
                
                            ),
                          ),
                        
                        ],
                      ),                      
                    );
                  }




  //Start the custom cards and Fields

  //You can edit the Custom Input Text Field from Here

  Widget custumTextField(String hint , Icon iconName){

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(

        style: TextStyle(color: _MainColor),
        cursorColor: _RedViolaColor,
        decoration: InputDecoration(
          disabledBorder: InputBorder.none,
          fillColor: Colors.transparent,filled: true,
          hintText: hint,labelStyle: TextStyle(color: _MainColor),
          suffixIcon: iconName,
          focusColor: _RedViolaColor,


        ),


      ),
    );

  }


                
 Widget _SectionCard (String title  , IconData myIcon ,Color myColor,Color btnColor,Color contentColor){
                
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                
                                         height: MediaQuery.of(context).size.height * 0.20,
                                           width: MediaQuery.of(context).size.width * 0.30,
                                           decoration: BoxDecoration(
                                            color: myColor,
                                             borderRadius: BorderRadius.circular(10),
                                               
                                           ),
                                           
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: <Widget>[
                                           SizedBox(
                                                 height: 10,
                                               ),

                                               Icon(myIcon,color: contentColor,size: 30,),
                                                  SizedBox(
                                                 height: 10,
                                               ),
                                              
                                               Text(title,style: TextStyle(color:contentColor,fontSize: 18),),
                                                SizedBox(
                                                 height: 15,
                                               ),

                                              Icon(Icons.play_circle_filled,color:btnColor ,size: 35,),


                                             ],
                                           ),
                                         ),
                            
                        ],
                      ),
                    );
                  }
                
  Widget _ProductCard(String imageUrl, Color myColor , String title ,String categoryName) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,right: 15,left: 5),
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
                        image:  DecorationImage(
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

                Text(title,style: TextStyle(color: myColor,fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(categoryName,style: TextStyle(color:  _MainColor,fontSize: 12,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('The description that help the user to take action ',style: TextStyle(color:  Colors.grey,fontSize: 12)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                 Text('25 Min',style: TextStyle(color: myColor,fontSize: 10)),

                    SizedBox(
                       width: 40,
                     ),

                 Row(
                   children: <Widget>[
                     Icon(Icons.bookmark,color: _RedViolaColor,),
                  
                     Text('3 days Delievry',style: TextStyle(color:_RedViolaColor),)
                   ],
                 ),

                  
                ],),
      


              ],),
            ),
          )
          
          ],
          ),
        ),
      ),
    );
  }
}