import 'package:clima_app/screens/location_screen.dart';
import 'package:clima_app/services/location.dart';
import 'package:clima_app/services/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    print(weatherData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }
  /*
  Future<dynamic> getLocationWeather() async {
    print('Obteniendo coordenadas');
    Location location = Location();
    await location.getCurrentLocation();
    print('lat: ${location.latitude}, long: ${location.longitude}');

    print('Obteniendo informacion del clima');
    dynamic data = await Future.delayed(Duration(seconds: 3), () {
      return {
        'temperature': 19,
        'weatherIcon': '☁️',
        'weatherMessage': 'Todo esta muy cool',
        'cityName': 'Arequipa',
      };
    });
    return data;
  }

   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
