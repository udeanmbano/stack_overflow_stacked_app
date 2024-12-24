import 'package:stacked/stacked.dart';
import '../../../app/app.locator.dart';
import '../../../models/search_result.dart';
import '../../../services/search_data_service.dart';

class HomeViewModel extends BaseViewModel {
  final _searchService = locator<SearchDataService>();

  List<Items>? _results = [];
  List<Items>? get results => _results;

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
    try {
      final result = await _searchService.fetchResults(query);
      _results = result.items;
    } catch (e) {
      setError('Failed to fetch results');
    } finally {
      setBusy(false);
    }
  }
}
