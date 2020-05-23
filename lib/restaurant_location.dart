class RestaurantLocations {
  var _restaurantData = [
    {
      "restaurantName": "La Bonne Bouchee Cafe",
      "restaurantDescription": "A quaint French Cafe & Patisserie",
      "restaurantLat": 38.672362,  
      "restaurantLong": -90.456732,
      "restaurantImages": "La-Bonne-Bouchee.jpg",
      "restaurantCroppedImage": "La-Bonne-Bouchee-Cropped.jpg"
    },
    {
      "restaurantName": "Perfect Taste Sichuan",
      "restaurantDescription": "Authentic & delicious tasting Chinese cuisine",
      "restaurantLat": 38.655549, 
      "restaurantLong": -90.302420,
      "restaurantImages": "Perfect-Taste.jpg",
      "restaurantCroppedImage": "La-Bonne-Bouchee-Cropped.jpg"
    },
    {
      "restaurantName": "Nippon Tei",
      "restaurantDescription": "Sushi & other Japanese dishes",
      "restaurantLat": 38.596048, 
      "restaurantLong": -90.493569 ,
      "restaurantImages": "Nippon-Tei.jpg",
      "restaurantCroppedImage": "Nippon-Tei-Cropped.jpg"
    },
    {
      "restaurantName": "HuHot Mongolian Grill",
      "restaurantDescription": "Customizable stir fry dishes",
      "restaurantLat": 38.679411, 
      "restaurantLong": -90.469084,
      "restaurantImages": "HuHot.jpg",
      "restaurantCroppedImage": "HuHot-Cropped.jpg"
    },
    {
      "restaurantName": "Troy Mediterranean Cuisine",
      "restaurantDescription": "Serves Greek, Turkish, & more Mediterranean foods",
      "restaurantLat": 38.566786,  
      "restaurantLong": -90.494682,
      "restaurantImages": "Troy.jpg",
      "restaurantCroppedImage": "Troy-Cropped.jpg"
    },
    {
      "restaurantName": "Himalayan Yeti",
      "restaurantDescription": "Sushi & other Japanese dishes",
      "restaurantLat": 38.595186, 
      "restaurantLong": -90.271491,
      "restaurantImages": "Himalayan-Yeti.jpg",
      "restaurantCroppedImage": "Himalayan-Yeti-Cropped.jpg"
    },
    {
      "restaurantName": "Everest Cafe & Bar",
      "restaurantDescription": "Healthy Nepalese, Korean & Indian cuisines",
      "restaurantLat": 38.627836, 
      "restaurantLong": -90.251926,
      "restaurantImages": "Everest.png",
      "restaurantCroppedImage": "Everest.png"
    },
  ];
  List<Map<String, Object>> get data {
    return _restaurantData;
  }
}

