import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:you_movies/model/movies_model.dart';
import 'package:you_movies/services/apis/api_urls.dart';



class ApiServices {
  Future<List<MoviesModel>> getMovies(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final items = data['items'] as List<dynamic>;

        return items
            .map((item) => MoviesModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load movies: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching movies: $e');
      return [];
    }
  }
}
