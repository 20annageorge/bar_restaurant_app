import 'package:flutter/material.dart';
import './location_list_cards.dart';
import '../bookmark_page/bm_handler.dart';
import '../bookmark_page/bookmarks.dart';

/*
 * LocationPage creates each location card and shows it in a list.
 * The user can scroll up and down on this page to see all location cards. 
 */

class LocationPage extends StatelessWidget {
  final List<Map<String, Object>> barData;
  final List<Map<String, Object>> restaurantData;
  final BookmarkHandler bmHandler;
  LocationPage(this.barData, this.restaurantData, this.bmHandler);

  @override
  Widget build(BuildContext context) {
    var locationCards = List<LocationListCard>();
    for (var location in barData) {
      var newLocationCard = LocationListCard(location, bmHandler);
      locationCards.add(newLocationCard);
    }
    for (var location in restaurantData) {
      var newLocationCard = LocationListCard(location, bmHandler);
      locationCards.add(newLocationCard);
    }
    return Scaffold(
      appBar: new AppBar(title: Text("Explore"),
        actions: <Widget>[ 
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Bookmarks(bmHandler)),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: locationCards
        ), 
      ),
    );
  }
}