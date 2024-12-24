import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    List<Item>? items,
    bool? hasMore,
    int? quotaMax,
    int? quotaRemaining,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    List<String>? tags,
    Owner? owner,
    @JsonKey(name: 'is_answered') bool? isAnswered,
    @JsonKey(name: 'view_count') int? viewCount,
    @JsonKey(name: 'answer_count') int? answerCount,
    int? score,
    @JsonKey(name: 'last_activity_date') int? lastActivityDate,
    @JsonKey(name: 'creation_date') int? creationDate,
    int? questionId,
    String? contentLicense,
    String? link,
    String? title,
    String? body,
    int? lastEditDate,
    int? acceptedAnswerId,
    int? protectedDate,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    int? reputation,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'display_name') String? displayName, // Correct placement of @JsonKey
    String? link,
    @JsonKey(name: 'accept_rate') int? acceptRate,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
