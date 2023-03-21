import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token{
  String? token, email;
  Token({this.token, this.email});

  @override
  String toString() {
    return 'Token{token: $token, email: $email}';
  }

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}