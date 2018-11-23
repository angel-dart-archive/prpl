// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['entrypoint']);
  return Configuration()
    ..entryPoint = json['entrypoint'] as String
    ..builds = (json['builds'] as List)
            ?.map((e) =>
                e == null ? null : Build.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [];
}

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'entrypoint': instance.entryPoint,
      'builds': instance.builds
    };

Build _$BuildFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['name']);
  return Build(
      name: json['name'] as String,
      browserCapabilities: (json['browserCapabilities'] as List)
              ?.map((e) => e as String)
              ?.toList() ??
          []);
}

Map<String, dynamic> _$BuildToJson(Build instance) => <String, dynamic>{
      'name': instance.name,
      'browserCapabilities': instance.browserCapabilities
    };

PushManifestItem _$PushManifestItemFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type', 'weight']);
  return PushManifestItem(
      type: json['type'] as String, weight: json['weight'] as int);
}

Map<String, dynamic> _$PushManifestItemToJson(PushManifestItem instance) =>
    <String, dynamic>{'type': instance.type, 'weight': instance.weight};
