import 'package:flutter/material.dart';
import 'package:bloom/locationdata.dart';
import 'package:bloom/pages/faqs.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple[700],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Text('What are you',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 40.0)),
                Text('looking for?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 40.0))
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 110.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 105),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationData()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blueAccent[400],
                      width: 370,
                      height: 115,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.bottomLeft,
                              image: AssetImage(
                                  "assets/images/hos.png"),
                            ),
                          ),
                          SizedBox(width: 25),
                          Text('   Hospitals',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 28),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FaqsPage()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Color(0xFFFD4747),
                      width: 370,
                      height: 115,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.bottomLeft,
                              image: AssetImage(
                                  "assets/images/faq.png"),
                            ),
                          ),
                          SizedBox(width: 46),
                          Text("FAQ's",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 28),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}