import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import '../model/popular_movies.dart';

class ApiProvider {
  String apikey = '0cf2de36ca4f528bcd4f9457d4ee80fa';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    Response response =
        await client.get('$baseUrl/movie/popular?api_key=$apikey');
    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}
