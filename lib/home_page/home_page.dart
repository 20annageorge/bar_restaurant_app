import 'package:flutter/material.dart';
import '../push_handler.dart';
import '../bookmark_page/bookmarks.dart';
import './map.dart';
import './explore.dart';
import './about.dart';
import '../bookmark_page/bm_handler.dart';

/*
 * HomePage shows all the Map, Explore, and About page option cards in a column.  
 * Each card navigates to the associated page when tapped. 
 * The bookmark icon shows on the title bar and navigates to the bookmarks page when tapped. 
 */

class HomePage extends StatelessWidget {
  final List<Map<String, Object>> barData;
  final List<Map<String, Object>> restaurantData;
  final BookmarkHandler bmHandler;
  final PushHandler pushHandler;
  HomePage(this.barData, this.restaurantData, this.bmHandler, this.pushHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Bar & Restaurant Home"),
        actions: <Widget>[ 
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Bookmarks(bmHandler)),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MapW(barData, restaurantData, bmHandler, pushHandler),
            Explore(barData, restaurantData, bmHandler),
            About(bmHandler),
          ],
        )
      )
    );
  }
}