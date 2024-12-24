import 'package:stacked/stacked_annotations.dart';
import '../services/search_data_service.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => SearchDataService());
}
