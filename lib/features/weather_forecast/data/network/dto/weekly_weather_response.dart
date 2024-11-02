import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weekly_weather_response.g.dart';

@JsonSerializable()
class WeeklyWeatherResponse extends Equatable {
  @JsonKey(name: 'dt')
  final int dateTime;
  @JsonKey(name: 'main')
  final WeatherDetails weatherDetails;
  @JsonKey(name: 'weather')
  final List<Weather> weather;
  @JsonKey(name: 'wind')
  final Wind wind;
  @JsonKey(name: 'sys')
  final Sys sys;

  const WeeklyWeatherResponse({
    required this.dateTime,
    required this.weatherDetails,
    required this.weather,
    required this.wind,
    required this.sys,
  });

  factory WeeklyWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyWeatherResponseFromJson(json);

  @override
  List<Object?> get props => [
        dateTime,
        weatherDetails,
        weather,
        wind,
        sys,
      ];
}

@JsonSerializable()
class WeatherDetails {
  @JsonKey(name: 'tempMin')
  final double tempMin;
  @JsonKey(name: 'tempMax')
  final double tempMax;
  @JsonKey(name: 'pressure')
  final int pressure;
  @JsonKey(name: 'humidity')
  final int humidity;

  WeatherDetails({
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory WeatherDetails.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailsFromJson(json);
}

@JsonSerializable()
class Sys extends Equatable {
  @JsonKey(name: 'pod')
  final String partOfDay;

  const Sys({
    required this.partOfDay,
  });

  @override
  List<Object?> get props => [partOfDay];

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@JsonSerializable()
class Weather extends Equatable {
  @JsonKey(name: 'main')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'icon')
  final String icon;

  const Weather({
    required this.name,
    required this.description,
    required this.icon,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        icon,
      ];

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@JsonSerializable()
class Wind extends Equatable {
  @JsonKey(name: "speed")
  final double speed;

  const Wind({
    required this.speed,
  });

  @override
  List<Object?> get props => [speed];

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}