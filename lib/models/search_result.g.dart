// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool?,
      quotaMax: (json['quotaMax'] as num?)?.toInt(),
      quotaRemaining: (json['quotaRemaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'hasMore': instance.hasMore,
      'quotaMax': instance.quotaMax,
      'quotaRemaining': instance.quotaRemaining,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      isAnswered: json['is_answered'] as bool?,
      viewCount: (json['view_count'] as num?)?.toInt(),
      answerCount: (json['answer_count'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      lastActivityDate: (json['last_activity_date'] as num?)?.toInt(),
      creationDate: (json['creation_date'] as num?)?.toInt(),
      questionId: (json['questionId'] as num?)?.toInt(),
      contentLicense: json['contentLicense'] as String?,
      link: json['link'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      lastEditDate: (json['lastEditDate'] as num?)?.toInt(),
      acceptedAnswerId: (json['acceptedAnswerId'] as num?)?.toInt(),
      protectedDate: (json['protectedDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'owner': instance.owner,
      'is_answered': instance.isAnswered,
      'view_count': instance.viewCount,
      'answer_count': instance.answerCount,
      'score': instance.score,
      'last_activity_date': instance.lastActivityDate,
      'creation_date': instance.creationDate,
      'questionId': instance.questionId,
      'contentLicense': instance.contentLicense,
      'link': instance.link,
      'title': instance.title,
      'body': instance.body,
      'lastEditDate': instance.lastEditDate,
      'acceptedAnswerId': instance.acceptedAnswerId,
      'protectedDate': instance.protectedDate,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      reputation: (json['reputation'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      userType: json['user_type'] as String?,
      profileImage: json['profile_image'] as String?,
      displayName: json['display_name'] as String?,
      link: json['link'] as String?,
      acceptRate: (json['accept_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'reputation': instance.reputation,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'profile_image': instance.profileImage,
      'display_name': instance.displayName,
      'link': instance.link,
      'accept_rate': instance.acceptRate,
    };
