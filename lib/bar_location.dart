class BarLocations {
  var _barData = [
    {
      "barName": "The Fireplace Bar",
      "barDescription": "An off-road, friendly bar for locals",
      "barLongDescription": "The first Missouri State Capital Historic Site holds years of history. " +
          "It was Missouri’s first capital building between statehood in 1821 and the capital moving to Jefferson City in 1826. " +
          "The building was restored in the 1960s. It features 11 rooms to take you back in history. " +
          "Tours are available at the State Capital Historic Site office next door. " +
          "Here’s the site before the state restored it and then how it looks today. ",
      "barLat": 38.564422,
      "barLong": -90.463723,
      "barImages": "Fireplace-Bar.jpg",
      "barCroppedImage": "Fireplace-Bar-Cropped.jpg"
    },
  ];
  List<Map<String, Object>> get data {
    return _barData;
  }
}

