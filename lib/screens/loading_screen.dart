import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData() async {

    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  // lifecircle hooks
  @override
  void initState() {
    // first lifecircle hook to be called
    super.initState();
    getLocationData();
  }

  @override
  void deactivate() {
    // Last to be called
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    // Second to be called
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
//
