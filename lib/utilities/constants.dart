import 'package:flutter/material.dart';

const kApiKey = 'ffe975dcdffb5cfba4aa209ae97d46a1';
const kOpenWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(15),
  prefixIcon: Icon(
    Icons.location_city,
    color: Colors.black87,
  ),
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);