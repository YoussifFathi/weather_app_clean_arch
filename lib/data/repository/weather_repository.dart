import 'package:weather_app_clean_arch/data/datasource/remote_datasource.dart';
import 'package:weather_app_clean_arch/domain/entities/weather.dart';
import 'package:weather_app_clean_arch/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {

  final RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> fetchWeatherByCityName(String cityName) async {
return await  remoteDataSource.fetchWeatherByCityName(cityName);
  }



}