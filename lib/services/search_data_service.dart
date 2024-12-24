import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/search_result.dart';

class SearchDataService {
  static const _baseUrl = 'https://api.stackexchange.com/2.2/search/advanced';

  Future<SearchResult> fetchResults(String query) async {
    final url = Uri.parse(
        '$_baseUrl?pagesize=20&order=desc&sort=activity&title=$query&site=stackoverflow&filter=withbody');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return SearchResult.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
