import 'package:flutter/material.dart';
import '../map_page/maps.dart';
import '../bookmark_page/bm_handler.dart';
import '../push_handler.dart';

/*
 * MapW is the home page card that navigates to the maps page when tapped. 
 * It shows an icon, a title, and a description. 
 */

class MapW extends StatelessWidget {
  final List<Map<String, Object>> barData;
  final List<Map<String, Object>> restaurantData;
  final BookmarkHandler bmHandler;
  final PushHandler pushHandler;
  const MapW(this.barData, this.restaurantData, this.bmHandler, this.pushHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage(barData, restaurantData, bmHandler, pushHandler)),
                );
              },
              leading: Container(
                height: 100,
                child: Image.asset('assets/images/map.png', height: 100, width: 80),
              ),
              //leading: 
              title: Text('Map'),
              subtitle: Text('See bars and restaurants in St. Louis'), 
            )
          ],
        )
      ),
      margin: EdgeInsets.only(top: 8.0, left: 5.0, right: 5.0),
    );
  }
}
