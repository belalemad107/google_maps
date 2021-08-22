import 'package:flutter/material.dart';
import 'package:google_maps/screens/map_screen.dart';
import 'package:google_maps/screens/user_screen.dart';

class MapScreen extends StatefulWidget {
  final User user;
  MapScreen({this.user});
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Go To Map'),
      ),
      body: Column(
        children: [
          MaterialButton(
              child: Text('Go To Map'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MapSample(widget.user.address.geo)));
              })
        ],
      ),
    );
  }
}
