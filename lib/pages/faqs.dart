import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FAQ", style: TextStyle(color: Colors.white, fontSize: 24),),
          centerTitle: true,
          backgroundColor: Color(0xFF6F35A5),
          elevation: 0.0,
          leading: IconButton(
              iconSize: 23,
              icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white,),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(
            children: [
              SizedBox(height: 15,),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title:
                        Text('How many beds are available in every hospital?\n 100+', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title:
                        Text('Is vaccine available? \nYes', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        //leading: Icon(Icons.local_hospital, size: 70),
                        title:
                        Text('If yes then which one covishield or covaxin? \nCovishield is available.', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        //leading: Icon(Icons.local_hospital, size: 70),
                        title:
                        Text('Are walk-in vaccinations open or is registration via CoWin compulsory for all age groups?', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5.0,
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        //leading: Icon(Icons.local_hospital, size: 70),
                        title:
                        Text('Vaccine availability: 45+: Walk-in available, 18-45: Online registration to be done', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}