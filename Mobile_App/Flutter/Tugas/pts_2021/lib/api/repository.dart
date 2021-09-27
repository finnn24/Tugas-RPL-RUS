import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pts_2021/env/env.dart';
import 'package:pts_2021/models/movie_model.dart';

class Repository {
  Future getData() async {
    final String baseUrl = GlobalData.BASE_URL;
    final String apiKey = GlobalData.API_KEY;

    final response =
        await http.get(Uri.parse(baseUrl + '/movie/popular?api_key=' + apiKey));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Iterable it = jsonDecode(response.body)['results'];
      List<MovieModel> movieModel =
          it.map((e) => MovieModel.fromJson(e)).toList();
      return movieModel;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
