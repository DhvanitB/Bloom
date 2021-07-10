import 'package:flutter/material.dart';
import 'data.dart';
import 'package:bloom/pages/maps.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospitals", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: Color(0xFF6F35A5),
        leading: IconButton(
            iconSize: 23,
            icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            Center(
              child: Image.asset(
                "assets/images/h1.png",
              ),
            ),
            SizedBox(height: 45),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFF6F35A5),
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
                              "assets/images/loc.png"),
                        ),
                      ),
                      SizedBox(width: 25),
                      Text('   Location',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 28),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Data()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFF6F35A5),
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
                              "assets/images/dat.png"),
                        ),
                      ),
                      SizedBox(width: 46),
                      Text("Hospital Info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 28),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
