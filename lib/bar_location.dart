class BarLocations {
  var _barData = [
    {
      "barName": "The Fireplace Bar",
      "barDescription": "An off-road, friendly bar for locals",
      "barLat": 38.564422,
      "barLong": -90.463723,
      "barImages": "Fireplace-Bar.jpg",
      "barCroppedImage": "Fireplace-Bar-Cropped.jpg"
    },
    {
      "barName": "Big A's",
      "barDescription": "Pool tables & beer next to the river",
      "barLat": 38.783053, 
      "barLong": -90.480002,
      "barImages": "Big-As.jpg",
      "barCroppedImage": "Big-As-Cropped.jpg"
    },
    {
      "barName": "Drinking Horn",
      "barDescription": "Biker bar with pool tables & cheap drinks",
      "barLat": 38.779249, 
      "barLong": -90.507922,
      "barImages": "Drinking-Horn.jpg",
      "barCroppedImage": "Drinking-Horn-Cropped.jpg"
    },
    {
      "barName": "Little Jamaica",
      "barDescription": "An island style bar off Cherokee",
      "barLat": 38.593473, 
      "barLong": -90.229212,
      "barImages": "Little-Jamaica.jpg",
      "barCroppedImage": "Little-Jamaica-Cropped.jpg"
    },
  ];
  List<Map<String, Object>> get data {
    return _barData;
  }
}

