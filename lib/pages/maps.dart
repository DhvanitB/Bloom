import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MapPage extends StatefulWidget{
  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
  double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 23,
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("              Mumbai", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),),
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }
  Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
          onPressed: () {
            zoomVal--;
            _minus( zoomVal);
          }),
    );
  }
  Widget _zoomplusfunction() {

    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(19.0760,72.8777), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(19.0760,72.8777), zoom: zoomVal)));
  }


  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7c8c9d2e41871%3A0x18b2a8b2435df969!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipM0B-U6sOb9gvPm4ZErbfV97Lo7ys9DOtoWPJet%3Dw217-h160-k-no!5sK.J.%20Somaiya%20Hospital%20%26%20Research%20Center%2C%20Somaiya%20Ayurvihar%2C%20Eastern%20Express%20Highway%2C%20Sion%20East%2C%20Sion%2C%20Mumbai%2C%20Maharashtra%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipM0B-U6sOb9gvPm4ZErbfV97Lo7ys9DOtoWPJet&hl=en&sa=X&ved=2ahUKEwjNtPCNn73xAhVCbysKHdAeDR4QoiowEnoECEkQAw#",
                  19.0470046,72.8747529,"K J Somaiya Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7c9cf3d7e6811%3A0x44a05f975f97e7e0!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNE9yROrhhxcDyp92BeUl_DFVieaiXq8ImrSrsp%3Dw213-h160-k-no!5snanavati%20hospital%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNE9yROrhhxcDyp92BeUl_DFVieaiXq8ImrSrsp&hl=en&sa=X&ved=2ahUKEwjdxYrMn73xAhXRb30KHe1TCdUQoiowJHoECGUQAw#",
                  19.095964,72.840009,"Nanavati Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7c6b67f73b3d7%3A0x6256f6239ebc9f09!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNSm8KZditUJKD_uxtvXwD3lxzJNjIFyjaUo-dY%3Dw224-h160-k-no!5ssterling%20wockhardt%20hospital%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNSm8KZditUJKD_uxtvXwD3lxzJNjIFyjaUo-dY&hl=en&sa=X&ved=2ahUKEwjgoLW9n73xAhXLWisKHcEsC2wQoiowEnoECEAQAw#",
                  19.0698454,72.9873953,"Sterling Wockhardt Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7c938c9dfd491%3A0x88790013d219e1cc!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNd0BjnJb-k1mEVOc2l6ktHgqA-LTUtYPKDiNrn%3Dw120-h160-k-no!5slilavati%20hospital%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNd0BjnJb-k1mEVOc2l6ktHgqA-LTUtYPKDiNrn&hl=en&sa=X&ved=2ahUKEwjZ_fran73xAhVGU30KHRXSAGgQoiowJXoECGMQAw#",
                  19.05088233947754,72.82904815673828,"Lilavati Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7ce76d1f47593%3A0x73af47ca4e2965c7!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMV9k3iErQyQmzz5WXTM5YGmSEujvC9k1ZdDkDn%3Dw213-h160-k-no!5sjaslok%20hospital%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMV9k3iErQyQmzz5WXTM5YGmSEujvC9k1ZdDkDn&hl=en&sa=X&ved=2ahUKEwjRpaX0n73xAhWBYisKHbpzA6IQoiowInoECGMQAw#",
                  18.9717005,72.8099257,"Jaslok Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.google.com/maps/uv?pb=!1s0x3be7c7b982cdca89%3A0x1245b091e72be4d3!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNung3KHtcT9nosTVG8Ryjmi0DcNo8dQX-ysXYn%3Dw241-h160-k-no!5sgodrej%20memorial%20hospital%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNzDQttJzyYlU7w6CzX8xgOWMNstwSWBIl-B4Qw&hl=en&sa=X&ved=2ahUKEwjFnqeCoL3xAhVCbn0KHcW7ApkQoiowG3oECFIQAw#",
                  19.1042362,72.9276717,"Godrej Memorial Hospital"),
            ),
            SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
  Widget _boxes(String _image, double lat,double long,String restaurantName) {
    return  GestureDetector(
      onTap: () {
        _gotoLocation(lat,long);
      },
      child:Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(restaurantName),
                    ),
                  ),

                ],)
          ),
        ),
      ),
    );
  }
  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(restaurantName,
                style: TextStyle(
                    color: Color(0xff6200ee),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(height:20.0),

        Container(
            child: Text(
              "Covid Vaccination Centre",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
        SizedBox(height:5.0),
        Container(
            child: Text(
              "Covishield available",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
        SizedBox(height:5.0),
        Container(
            child: Text(
              "Mumbai \u00B7 Maharashtra",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(19.0760,72.8777), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          KJMarker,NanaMarker,SterMarker,LilaMarker,JasMarker,GodrejMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}

Marker KJMarker = Marker(
  markerId: MarkerId('KJ Somaiya'),
  position: LatLng(19.0470046,72.8747529),
  infoWindow: InfoWindow(title: 'KJ Somaiya Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker NanaMarker = Marker(
  markerId: MarkerId('Nanavati'),
  position: LatLng(19.095964,72.840009),
  infoWindow: InfoWindow(title: 'Nanavati Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker SterMarker = Marker(
  markerId: MarkerId('Sterling'),
  position: LatLng(19.0698454,72.9873953),
  infoWindow: InfoWindow(title: 'Sterling Wockhardt Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

//New York Marker

Marker LilaMarker = Marker(
  markerId: MarkerId('Lilavati'),
  position: LatLng(19.05088233947754,72.82904815673828),
  infoWindow: InfoWindow(title: 'Lilavati Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker JasMarker = Marker(
  markerId: MarkerId('Jaslok'),
  position: LatLng(18.9717005,72.8099257),
  infoWindow: InfoWindow(title: 'Jaslok Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker GodrejMarker = Marker(
  markerId: MarkerId('Godrej'),
  position: LatLng(19.1042362,72.9276717),
  infoWindow: InfoWindow(title: 'Godrej Memorial Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);