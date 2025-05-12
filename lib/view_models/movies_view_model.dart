import 'package:you_movies/model/movies_model.dart';
import 'package:you_movies/services/apis/api_services.dart';
import 'package:you_movies/services/apis/api_urls.dart';

class MoviesViewModel {
  final ApiServices _api = ApiServices();

  Future<List<MoviesModel>> fetchPopularMovies() async {
    return await _api.getMovies(popular);
  }

  Future<List<MoviesModel>> fetchEnglishMovies() async {
    return await _api.getMovies(englishMovies);
  }

  Future<List<MoviesModel>> fetchHindiMovies() async {
    return await _api.getMovies(hindiMovies);
  }

  Future<List<MoviesModel>> fetchCrimeMovies() async {
    return await _api.getMovies(crime);
  }

  Future<List<MoviesModel>> fetchComedyMovies() async {
    return await _api.getMovies(comedy);
  }

  Future<List<MoviesModel>> fetchThrillerMovies() async {
    return await _api.getMovies(thriller);
  }

  Future<List<MoviesModel>> fetchSciFiMovies() async {
    return await _api.getMovies(sciFi);
  }
}
