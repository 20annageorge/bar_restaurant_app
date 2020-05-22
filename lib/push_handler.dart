import 'package:geolocator/geolocator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/*
 * PushHandler is used for handling flutter local push notifications.
 * It is used in the main function for showing notifications
 * and checking for a user's distance from each location.
 */

class PushHandler {
  final List<Map<String, Object>> dataPointsColBar;
  final List<Map<String, Object>> dataPointsColRestaurant;
  PushHandler(this.dataPointsColBar, this.dataPointsColRestaurant);
  
  double _longitude = 0;
  double _latitude = 0;
  Map<String, Object> _locationData;

  Map<String, Object> get locationData {
    return _locationData;
  }

  // Get the user's longitude and latitude current positions
  Future getPosition() async {
    Position position;
    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      // Ignore errors.
      return;
    }
    _longitude = double.parse(position.longitude.toString());
    _latitude = double.parse(position.latitude.toString());
  }

}
