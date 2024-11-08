import 'package:current_weather/features/current_weather/presentation/screen/current_weather_screen.dart';
import 'package:current_weather_design_system/styles/theme/theme.dart';
import 'package:flutter/material.dart';

class CurrentWeatherApp extends StatelessWidget {
  const CurrentWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Current Weather',
      theme: theme.light(),
      darkTheme: theme.dark(),
      debugShowCheckedModeBanner: false,
      home: const CurrentWeatherScreen(),
    );
  }
}
