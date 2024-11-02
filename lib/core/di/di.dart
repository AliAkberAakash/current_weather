import 'package:current_weather/core/network/dio_configuration.dart';
import 'package:current_weather/core/network/dio_network_client.dart';
import 'package:current_weather/core/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio(configureDio()));

  getIt.registerLazySingleton<NetworkClient>(
    () => DioNetworkClient(getIt.get(), interceptors: [
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
      ),
    ]),
  );
}
