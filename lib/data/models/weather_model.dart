import 'package:weather_app_clean_arch/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.cityName,
    required super.main,
    required super.description,
    required super.pressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      id: data['id'],
      cityName: data['name'],
      main: data["weather"][0]['main'],
      description: data["weather"][0]['description'],
      pressure:  data["main"]['pressure'],
    );
  }
}
