import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospital Info", style: TextStyle( color: Colors.white,  fontSize: 24, fontWeight: FontWeight.w700)),
        centerTitle: true,
        backgroundColor: Color(0xFF6F35A5),
        elevation: 0.0,
        leading: IconButton(
            iconSize: 23,
            icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFFCC775),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.syringe, size: 70, color: Colors.black54,),
                    title:
                    Text('KJ Somaiya Hospital', style: TextStyle(fontSize: 20.0),),
                    subtitle:
                    Text('K J Somaiya Hospital and Research Center, Somaiya Ayurvihar Complex, Eastern Express Highway, Sion(E), Mumbai - 400 022'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFF7ACAD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.hospital, size: 70, color: Colors.black54,),
                    title:
                    Text('Nanavati Hospital', style: TextStyle(fontSize: 20.0),),
                    subtitle:
                    Text('Nanavati Super Speciality Hospital, S.V. Road, Mumbai - 400056'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFFCC775),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.hospital, size: 70, color: Colors.black54,),
                    title:
                    Text('Lilavati Hospital', style: TextStyle(fontSize: 20.0),),
                    subtitle:
                    Text('Lilavati Hospital & Research Centre, A-791, Bandra Reclamation, Bandra (W), Mumbai - 400050.'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFF7ACAD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.syringe, size: 70, color: Colors.black54,),
                    title:
                    Text('Sterling Wockhardt Hospital', style: TextStyle(fontSize: 20.0),),
                    subtitle:
                    Text('Sterling Wockhardt Hospital, Sion-Panvel Expressway, Sector 7 Vashi, Navi Mumbai - 400703'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFFCC775),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.hospital, size: 70, color: Colors.black54,),
                    title:
                    Text('Jaslok Hospital', style: TextStyle(fontSize: 20.0),),
                    subtitle:
                    Text('Jaslok Hospital, 15, Pedder Rd, IT Colony, Tardeo, Mumbai - 400026'),
                  ),
                ],
              ),
            ),
          ),Container(
            height: 180,
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              color: Color(0xFFF7ACAD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.hospital, size: 70, color: Colors.black54,),
                    title:
                    Text('Godrej Memorial Hospital', style: TextStyle(fontSize: 20.0,),),
                    subtitle:
                    Text('Godrej Memorial Hospital, BESbswy, Address - Pirojshanagar, Vikhroli(East), Mumbai - 400079'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
     );
    }
  }