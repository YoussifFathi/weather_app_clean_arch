import 'package:weather_app_clean_arch/core/utils/app_constants.dart';
import 'package:weather_app_clean_arch/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BASERemoteDataSource {
  Future<WeatherModel> fetchWeatherByCityName(String cityName);
}

class RemoteDataSource implements BASERemoteDataSource {
  @override
  Future<WeatherModel> fetchWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get("${AppConstants.baseUrl}weather?q=$cityName&appid=${AppConstants.apiKey}");
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return WeatherModel(
        id: 1,
        cityName: "cityName",
        main: "main",
        description: "description",
        pressure: 1,
      );
    }
  }
}
