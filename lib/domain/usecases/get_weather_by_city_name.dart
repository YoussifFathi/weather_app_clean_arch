import 'package:weather_app_clean_arch/domain/repository/base_weather_repository.dart';
import '../entities/weather.dart';

class GetWeatherByCityName {

  final BaseWeatherRepository repository;

  GetWeatherByCityName(this.repository);

  Future<Weather> execute(String cityName)async{
    return repository.fetchWeatherByCityName(cityName);
  }


}