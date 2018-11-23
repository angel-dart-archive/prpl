import 'package:json_annotation/json_annotation.dart';
part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  @JsonKey(name: 'entrypoint', nullable: false, required: true)
  String entryPoint;

  @JsonKey(defaultValue: const <Build>[])
  List<Build> builds;

  static Configuration fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}

@JsonSerializable()
class Build {
  @JsonKey(nullable: false, required: true)
  String name;

  @JsonKey(defaultValue: const <String>[])
  List<String> browserCapabilities;

  Build({this.name, this.browserCapabilities: const []});

  static Build fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);

  Map<String, dynamic> toJson() => _$BuildToJson(this);
}

@JsonSerializable()
class PushManifestItem {
  @JsonKey(nullable: false, required: true)
  String type;

  @JsonKey(nullable: false, required: true)
  int weight;

  PushManifestItem({this.type, this.weight});

  static PushManifestItem fromJson(Map<String, dynamic> json) =>
      _$PushManifestItemFromJson(json);

  Map<String, dynamic> toJson() => _$PushManifestItemToJson(this);
}
