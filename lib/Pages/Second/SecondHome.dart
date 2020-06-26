import 'package:flutter/material.dart';
import 'package:woohome/Pages/Second/NavigationUntitled.dart';

class SecondHome extends StatefulWidget {
  @override
  _SecondHomeState createState() => _SecondHomeState();
}


Color _MainColor = Color(0xff002638);

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
        title: Icon(Icons.home,color:_MainColor,size: 30,),
        
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
        
        ],
      ),
      bottomNavigationBar: NavigationUntitled(),
      
    );
  }

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

}