import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../bookmark_page/bookmarks.dart';
import 'package:latlong/latlong.dart';
import './location-card.dart';
import '../bookmark_page/bm_handler.dart';
import '../push_handler.dart';

/*
 * MapPage loads a static Mapbox map centered on the Katy Trail. 
 * It adds a red marker for every location and shows a location card
 * for a specific location when the marker is tapped.
 * Pan boundaries allow the user to zoom in and out on the map. 
 */

class MapPage extends StatefulWidget {
  final List<Map<String, Object>> dataPointsColBar;
  final List<Map<String, Object>> dataPointsColRestaurant;
  final BookmarkHandler bmHandler;
  final PushHandler pushHandler;
  MapPage(this.dataPointsColBar, this.dataPointsColRestaurant, this.bmHandler, this.pushHandler);
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _showLocationCard(context, Map<String, Object> locData) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return LocationCard(
            locData, widget.dataPointsColBar, widget.dataPointsColRestaurant, widget.bmHandler
          );
        }
      );
    }

    var locationPlaces = List<Marker>();
    for (var location in widget.dataPointsColBar) {
      // Create marker widget for each location
          var temp = new Marker(
          width: 45.0,
          height: 45.0,
          point: new LatLng(location["barLat"], location["barLong"]),
          builder: (context) => new Container(
            child: IconButton(
              icon: Icon(Icons.local_bar),
              color: Colors.black,
              iconSize: 45.0,
              onPressed: () {
                _showLocationCard(context, location);
                print("Location: " + location["barName"] + " was tapped.");
              },
            ),
          )
        );
         // Append location to list of places
        locationPlaces.add(temp);
    }

    
    for (var location in widget.dataPointsColRestaurant) {
        var temp = new Marker(
        width: 45.0,
        height: 45.0,
        point: new LatLng(location["restaurantLat"], location["restaurantLong"]),
        builder: (context) => new Container(
          child: IconButton(
            icon: Icon(Icons.local_dining),
            color: Colors.black,
            iconSize: 45.0,
            onPressed: () {
              _showLocationCard(context, location);
              print("Location: " + location["restaurantName"] + " was tapped.");
            },
          ),
        )
      );
      // Append location to list of places
      locationPlaces.add(temp);
    }
  
    var url =
        'https://api.mapbox.com/styles/v1/ojohnson7cc/ck79a877u2ffj1jnn4dfgh3r9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2pvaG5zb243Y2MiLCJhIjoiY2s3OWE0ZG5nMHIyaDNlcWh4cHd5N3I2bSJ9.L1xfay1JISdfIO1jDp8rTg';
    var token =
        'sk.eyJ1Ijoib2pvaG5zb243Y2MiLCJhIjoiY2s3OWp2cnNqMHUydzNlcWtxd2R4c2JncCJ9.keCK6gFmt7EO9Ug4GwC_jg';

    // Create Flutter Map Widget
    return Scaffold(
      appBar: new AppBar(
        title: Text('Map'),
        actions: <Widget>[ 
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Bookmarks(widget.bmHandler)),
              );
            },
          ),
        ],
      ),
      body: FlutterMap(
        options: new MapOptions(
            center: new LatLng(38.627003, -90.199402), 
            
        ),
        layers: [
          new TileLayerOptions(urlTemplate: url, additionalOptions: {
            'accessToken': token,
            'id': 'mapbox.mapbox-streets-v7'
          }),
          new MarkerLayerOptions(markers: locationPlaces),
        ],
      ),
    );
  }
}
