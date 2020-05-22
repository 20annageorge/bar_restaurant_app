class RestaurantLocations {
  var _restaurantData = [
    {
      "restaurantName": "La Bonne Bouchee Cafe",
      "restaurantDescription": "A quaint French Cafe & Patisserie",
      "restaurantLongDescription": "Little is known about the origin of Pilot Grove, " +
          "except that the small horse-powered mill settlement was created in 1820 on a tributary of the Petite Saline Creek. " +
          "Half a mile northeast of Pilot Grove, a Katy Railroad train carrying WWII supplies of crude oil and artillery shells " +
          "derailed and exploded, sending shrapnel a half mile down to the Pilot Grove depot. ",
      "restaurantLat": 38.672362,  
      "restaurantLong": -90.456732,
      "restaurantImages": "La-Bonne-Bouchee.jpg",
      "restaurantCroppedImage": "La-Bonne-Bouchee-Cropped.jpg"
    },
  ];
  List<Map<String, Object>> get data {
    return _restaurantData;
  }
}

