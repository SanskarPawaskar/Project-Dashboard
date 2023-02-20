
import 'package:dashboard/Screens/Weather/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Screens/Settings/settings.dart';

getRoutes() {
  return {
    WeatherPage.route: (context) => WeatherPage(),
  };
}
