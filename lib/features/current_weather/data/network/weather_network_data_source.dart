import 'package:current_weather/features/current_weather/data/network/dto/weather_query_request.dart';
import 'package:current_weather/features/current_weather/data/network/dto/weekly_weather_response.dart';

abstract class WeatherNetworkDataSource {
  Future<List<WeeklyWeatherResponse>> getWeatherResponse(
      WeatherQueryRequest request);
}