import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_data.dart';

class PixabayApi {
  final String apiKey = '43805107-00753c3f9b57e8d7262ab6790';

  Future<List<ImageData>> fetchImages(String query, int page) async {
    final response = await http.get(
      Uri.parse('https://pixabay.com/api/?key=$apiKey&q=$query&image_type=photo'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return (data['hits'] as List).map((item) => ImageData.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}
