import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class AuthUser {
  String id;
  String email;
  String? password;

  AuthUser({required this.id, required this.email, this.password});

  factory AuthUser.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
