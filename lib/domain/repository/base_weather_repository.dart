import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> fetchWeatherByCityName(String cityName);
}