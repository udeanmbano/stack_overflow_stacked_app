import 'package:stacked/stacked.dart';
import '../../../app/app.locator.dart';
import '../../../models/search_result.dart';
import '../../../services/search_data_service.dart';
import '../../../services/logger_service.dart'; // Import the LoggerService

class HomeViewModel extends BaseViewModel {
  final _searchService = locator<SearchDataService>();
  final _logger = locator<LoggerService>(); // Access the LoggerService

  List<Item>? _results = [];
  List<Item>? get results => _results;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  // Constructor to initialize the search with an empty query
  HomeViewModel() {
    _init();
  }

  // Initialize with an empty query
  Future<void> _init() async {
    await fetchSearchResults('');
  }

  // Method to fetch search results
  Future<void> fetchSearchResults(String query) async {
    setBusy(true);
    _errorMessage = null;  // Clear any previous error message
    try {
      _logger.i("Fetching search results for query: $query"); // Log the query being fetched
      final result = await _searchService.fetchResults(query);

      if (result.items!.isEmpty) {
        _errorMessage = 'No results found';
        _logger.w("No results found for query: $query"); // Log warning if no results
      } else {
        _results = result.items;
      }
    } catch (e) {
      _errorMessage = 'Failed to fetch results: $e';
      _logger.e("Error fetching search results for query: $query, error: $e"); // Log error message
    } finally {
      setBusy(false);
    }
  }
}
