import 'package:flutter/material.dart';

class FourthHomeScreen extends StatefulWidget {
  @override
  _FourthHomeScreenState createState() => _FourthHomeScreenState();
}
//Static Data Here
Color _MainColor = Color(0xff4C8863);

Color _DarkbrownColor = Color(0xff25241F);



List<String> myImageUrl =[
'https://images.unsplash.com/photo-1551106652-a5bcf4b29ab6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1901&q=80',
'https://images.unsplash.com/photo-1499195333224-3ce974eecb47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3048&q=80',
'https://images.unsplash.com/photo-1534119428213-bd2626145164?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2300&q=80',

'https://images.unsplash.com/photo-1549007994-cb92caebd54b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1875&q=80',

'https://images.unsplash.com/photo-1579522499684-f6dfae15274c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3451&q=80',

'https://images.unsplash.com/photo-1574684652491-c290b635ecf3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',

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
  _DarkbrownColor,
  _MainColor,
   _DarkbrownColor,
  _MainColor,


];


class _FourthHomeScreenState extends State<FourthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.reorder,color: _MainColor,size: 30,), onPressed: (){
           }),
        
      ),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Desserts You Love ',style: TextStyle(color:_MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),


        Container(
          height: 180,
          child: ListView (
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
             _SectionCard(myImageUrl[0]),
             _SectionCard(myImageUrl[5]),
             _SectionCard(myImageUrl[2]),
             _SectionCard(myImageUrl[3]),
             _SectionCard(myImageUrl[4]),
             _SectionCard(myImageUrl[1]),



            ],
          ),
        
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sweet Shops Near Me ',style: TextStyle(color: _MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          Container(
            width: 180,
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                _ProductCard(myImageUrl[4],_DarkbrownColor ,'The Deserts Shop Name'),
               _ProductCard(myImageUrl[1],_DarkbrownColor ,'The Deserts Shop Name'),
               _ProductCard(myImageUrl[3],_DarkbrownColor ,'The Deserts Shop Name'),
               _ProductCard(myImageUrl[5],_DarkbrownColor ,'The Deserts Shop Name'),




              

      

          


            
                      
             ],
                
                            ),
                          ),
                        
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Daily Offers  ',style: TextStyle(color: _MainColor,fontSize: 20,fontWeight: FontWeight.bold),),
          ),


          Container(
          height: 180,
          child: ListView (
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
             _SectionCard(myImageUrl[0]),
             _SectionCard(myImageUrl[5]),
             _SectionCard(myImageUrl[2]),
             _SectionCard(myImageUrl[3]),
             _SectionCard(myImageUrl[4]),
             _SectionCard(myImageUrl[1]),



            ],
          ),
        
        ),
                        
                    



                        
                        ],
                      ),                      
                    );
                  }




  //Start the custom cards and Fields

  //You can edit the Custom Input Text Field from Here


                
 Widget _SectionCard (String imageUrl){
                
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                
                                         
                                           height: MediaQuery.of(context).size.height * 0.21,
                                           width: MediaQuery.of(context).size.width * 0.90,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(10),
                                             
                                             image:  DecorationImage(
                                            image: NetworkImage(imageUrl),
                                            fit: BoxFit.cover,
                          ),
                                           ),
                                        
                                         ),
                            
                        ],
                      ),
                    );
                  }
                
  Widget _ProductCard(String imageUrl, Color myColor , String title ,) {
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
              height: 100,
              width: 100,
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

                Text(title,style: TextStyle(color: myColor,fontSize: 18,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                 Text('15 Saray El Gezirah St.',style: TextStyle(color: myColor,fontSize: 13)),

                    SizedBox(
                       width: 40,
                     ),

                 Row(
                   children: <Widget>[
                     Icon(Icons.location_on,color: _MainColor,),
                  
                     Text('45 mins',style: TextStyle(color:_MainColor),)
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