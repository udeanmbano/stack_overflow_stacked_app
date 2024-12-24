// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  List<Item>? get items => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;
  int? get quotaMax => throw _privateConstructorUsedError;
  int? get quotaRemaining => throw _privateConstructorUsedError;

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {List<Item>? items, bool? hasMore, int? quotaMax, int? quotaRemaining});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? hasMore = freezed,
    Object? quotaMax = freezed,
    Object? quotaRemaining = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotaMax: freezed == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int?,
      quotaRemaining: freezed == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Item>? items, bool? hasMore, int? quotaMax, int? quotaRemaining});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? hasMore = freezed,
    Object? quotaMax = freezed,
    Object? quotaRemaining = freezed,
  }) {
    return _then(_$SearchResultImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotaMax: freezed == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int?,
      quotaRemaining: freezed == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl(
      {final List<Item>? items,
      this.hasMore,
      this.quotaMax,
      this.quotaRemaining})
      : _items = items;

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? hasMore;
  @override
  final int? quotaMax;
  @override
  final int? quotaRemaining;

  @override
  String toString() {
    return 'SearchResult(items: $items, hasMore: $hasMore, quotaMax: $quotaMax, quotaRemaining: $quotaRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.quotaMax, quotaMax) ||
                other.quotaMax == quotaMax) &&
            (identical(other.quotaRemaining, quotaRemaining) ||
                other.quotaRemaining == quotaRemaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      hasMore,
      quotaMax,
      quotaRemaining);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {final List<Item>? items,
      final bool? hasMore,
      final int? quotaMax,
      final int? quotaRemaining}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  List<Item>? get items;
  @override
  bool? get hasMore;
  @override
  int? get quotaMax;
  @override
  int? get quotaRemaining;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  List<String>? get tags => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_answered')
  bool? get isAnswered => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_count')
  int? get answerCount => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_activity_date')
  int? get lastActivityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  int? get creationDate => throw _privateConstructorUsedError;
  int? get questionId => throw _privateConstructorUsedError;
  String? get contentLicense => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int? get lastEditDate => throw _privateConstructorUsedError;
  int? get acceptedAnswerId => throw _privateConstructorUsedError;
  int? get protectedDate => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {List<String>? tags,
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
      int? protectedDate});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? owner = freezed,
    Object? isAnswered = freezed,
    Object? viewCount = freezed,
    Object? answerCount = freezed,
    Object? score = freezed,
    Object? lastActivityDate = freezed,
    Object? creationDate = freezed,
    Object? questionId = freezed,
    Object? contentLicense = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? lastEditDate = freezed,
    Object? acceptedAnswerId = freezed,
    Object? protectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      isAnswered: freezed == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCount: freezed == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as int?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      contentLicense: freezed == contentLicense
          ? _value.contentLicense
          : contentLicense // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditDate: freezed == lastEditDate
          ? _value.lastEditDate
          : lastEditDate // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedAnswerId: freezed == acceptedAnswerId
          ? _value.acceptedAnswerId
          : acceptedAnswerId // ignore: cast_nullable_to_non_nullable
              as int?,
      protectedDate: freezed == protectedDate
          ? _value.protectedDate
          : protectedDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? tags,
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
      int? protectedDate});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? owner = freezed,
    Object? isAnswered = freezed,
    Object? viewCount = freezed,
    Object? answerCount = freezed,
    Object? score = freezed,
    Object? lastActivityDate = freezed,
    Object? creationDate = freezed,
    Object? questionId = freezed,
    Object? contentLicense = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? lastEditDate = freezed,
    Object? acceptedAnswerId = freezed,
    Object? protectedDate = freezed,
  }) {
    return _then(_$ItemImpl(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      isAnswered: freezed == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCount: freezed == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as int?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      contentLicense: freezed == contentLicense
          ? _value.contentLicense
          : contentLicense // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditDate: freezed == lastEditDate
          ? _value.lastEditDate
          : lastEditDate // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedAnswerId: freezed == acceptedAnswerId
          ? _value.acceptedAnswerId
          : acceptedAnswerId // ignore: cast_nullable_to_non_nullable
              as int?,
      protectedDate: freezed == protectedDate
          ? _value.protectedDate
          : protectedDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {final List<String>? tags,
      this.owner,
      @JsonKey(name: 'is_answered') this.isAnswered,
      @JsonKey(name: 'view_count') this.viewCount,
      @JsonKey(name: 'answer_count') this.answerCount,
      this.score,
      @JsonKey(name: 'last_activity_date') this.lastActivityDate,
      @JsonKey(name: 'creation_date') this.creationDate,
      this.questionId,
      this.contentLicense,
      this.link,
      this.title,
      this.body,
      this.lastEditDate,
      this.acceptedAnswerId,
      this.protectedDate})
      : _tags = tags;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Owner? owner;
  @override
  @JsonKey(name: 'is_answered')
  final bool? isAnswered;
  @override
  @JsonKey(name: 'view_count')
  final int? viewCount;
  @override
  @JsonKey(name: 'answer_count')
  final int? answerCount;
  @override
  final int? score;
  @override
  @JsonKey(name: 'last_activity_date')
  final int? lastActivityDate;
  @override
  @JsonKey(name: 'creation_date')
  final int? creationDate;
  @override
  final int? questionId;
  @override
  final String? contentLicense;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final int? lastEditDate;
  @override
  final int? acceptedAnswerId;
  @override
  final int? protectedDate;

  @override
  String toString() {
    return 'Item(tags: $tags, owner: $owner, isAnswered: $isAnswered, viewCount: $viewCount, answerCount: $answerCount, score: $score, lastActivityDate: $lastActivityDate, creationDate: $creationDate, questionId: $questionId, contentLicense: $contentLicense, link: $link, title: $title, body: $body, lastEditDate: $lastEditDate, acceptedAnswerId: $acceptedAnswerId, protectedDate: $protectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.contentLicense, contentLicense) ||
                other.contentLicense == contentLicense) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.lastEditDate, lastEditDate) ||
                other.lastEditDate == lastEditDate) &&
            (identical(other.acceptedAnswerId, acceptedAnswerId) ||
                other.acceptedAnswerId == acceptedAnswerId) &&
            (identical(other.protectedDate, protectedDate) ||
                other.protectedDate == protectedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      owner,
      isAnswered,
      viewCount,
      answerCount,
      score,
      lastActivityDate,
      creationDate,
      questionId,
      contentLicense,
      link,
      title,
      body,
      lastEditDate,
      acceptedAnswerId,
      protectedDate);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final List<String>? tags,
      final Owner? owner,
      @JsonKey(name: 'is_answered') final bool? isAnswered,
      @JsonKey(name: 'view_count') final int? viewCount,
      @JsonKey(name: 'answer_count') final int? answerCount,
      final int? score,
      @JsonKey(name: 'last_activity_date') final int? lastActivityDate,
      @JsonKey(name: 'creation_date') final int? creationDate,
      final int? questionId,
      final String? contentLicense,
      final String? link,
      final String? title,
      final String? body,
      final int? lastEditDate,
      final int? acceptedAnswerId,
      final int? protectedDate}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  List<String>? get tags;
  @override
  Owner? get owner;
  @override
  @JsonKey(name: 'is_answered')
  bool? get isAnswered;
  @override
  @JsonKey(name: 'view_count')
  int? get viewCount;
  @override
  @JsonKey(name: 'answer_count')
  int? get answerCount;
  @override
  int? get score;
  @override
  @JsonKey(name: 'last_activity_date')
  int? get lastActivityDate;
  @override
  @JsonKey(name: 'creation_date')
  int? get creationDate;
  @override
  int? get questionId;
  @override
  String? get contentLicense;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get body;
  @override
  int? get lastEditDate;
  @override
  int? get acceptedAnswerId;
  @override
  int? get protectedDate;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  int? get reputation => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName =>
      throw _privateConstructorUsedError; // Correct placement of @JsonKey
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_rate')
  int? get acceptRate => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {int? reputation,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'display_name') String? displayName,
      String? link,
      @JsonKey(name: 'accept_rate') int? acceptRate});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputation = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? profileImage = freezed,
    Object? displayName = freezed,
    Object? link = freezed,
    Object? acceptRate = freezed,
  }) {
    return _then(_value.copyWith(
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptRate: freezed == acceptRate
          ? _value.acceptRate
          : acceptRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? reputation,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'display_name') String? displayName,
      String? link,
      @JsonKey(name: 'accept_rate') int? acceptRate});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputation = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? profileImage = freezed,
    Object? displayName = freezed,
    Object? link = freezed,
    Object? acceptRate = freezed,
  }) {
    return _then(_$OwnerImpl(
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptRate: freezed == acceptRate
          ? _value.acceptRate
          : acceptRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl(
      {this.reputation,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'user_type') this.userType,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'display_name') this.displayName,
      this.link,
      @JsonKey(name: 'accept_rate') this.acceptRate});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  final int? reputation;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
// Correct placement of @JsonKey
  @override
  final String? link;
  @override
  @JsonKey(name: 'accept_rate')
  final int? acceptRate;

  @override
  String toString() {
    return 'Owner(reputation: $reputation, userId: $userId, userType: $userType, profileImage: $profileImage, displayName: $displayName, link: $link, acceptRate: $acceptRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.acceptRate, acceptRate) ||
                other.acceptRate == acceptRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reputation, userId, userType,
      profileImage, displayName, link, acceptRate);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      {final int? reputation,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'user_type') final String? userType,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'display_name') final String? displayName,
      final String? link,
      @JsonKey(name: 'accept_rate') final int? acceptRate}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  int? get reputation;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName; // Correct placement of @JsonKey
  @override
  String? get link;
  @override
  @JsonKey(name: 'accept_rate')
  int? get acceptRate;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
