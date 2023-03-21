// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      full_name: json['full_name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      device_name: json['device_name'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'username': instance.username,
      'email': instance.email,
      'country': instance.country,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'device_name': instance.device_name,
      'token': instance.token,
    };
