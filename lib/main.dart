import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './home_page/home_page.dart';
import './bookmark_page/bm_handler.dart';
import 'location_page/explore_page.dart';
import './push_handler.dart';
import './bar_location.dart';
import './restaurant_location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // Lock app's orientation on portrait mode 
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Bar & Restaurant Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  static var _barLocationData = BarLocations().data;
  static var _restaurantLocationData = RestaurantLocations().data;
  static var _bmHandler = BookmarkHandler();
  static var _pushHandler = PushHandler(_barLocationData, _restaurantLocationData);
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(_barLocationData, _restaurantLocationData, _bmHandler, _pushHandler);

  // Initialize local flutter notification plugin 
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    /*
    // Check user's current location every 2 seconds
    Timer.periodic(Duration(seconds: 2), (timer) {
      //_pushHandler.getPosition();
    });*/

    return Scaffold(
      body: PageStorage(child: currentScreen, bucket: bucket),
    );
  } 
}
