import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'dart:convert';

class AllData {
//location data
  late String lat;
  late String long;

//Function to get location
  Future<void> getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    String latitude = position.latitude.toString();
    String longitude = position.longitude.toString();
    // Getting latitude and longitude
    lat = latitude;
    long = longitude;
  }

  //Weather data
  late String currentTemp;
  late String desc;
  late String windSpeed;
  late String humidity;
  late String preassure;
  // Function for weather data

  void getWeatherdata() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=f8ec8e9f9624de6f8dad5b43922ae5f6'));
    Map data = jsonDecode(response.body);

    //Getting current temp,pressure,humidity
    Map main = data['main'];
    int tempConversion =
        (((main['temp'] - 32) * 5) / 9); //[(°F-32)×5]/9 + convet to Int + convet to String
    String getTemp = tempConversion.toString();
    String getHumidity = main['humidity'];
    String getPressure = main['pressure'];

  // Get description
  Map weather = data['weather'];
  String getdesc = weather['description'];
  }
}
