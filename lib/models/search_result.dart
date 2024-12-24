import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    List<Items>? items,
    bool? hasMore,
    int? quotaMax,
    int? quotaRemaining,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    List<String>? tags,
    Owner? owner,
    bool? isAnswered,
    int? viewCount,
    int? answerCount,
    int? score,
    int? lastActivityDate,
    int? creationDate,
    int? questionId,
    String? contentLicense,
    String? link,
    String? title,
    String? body,
    int? lastEditDate,
    int? acceptedAnswerId,
    int? protectedDate,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    int? reputation,
    int? userId,
    String? userType,
    String? profileImage,
    String? displayName,
    String? link,
    int? acceptRate,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
