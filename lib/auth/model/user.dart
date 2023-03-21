import 'package:smart_pay_data_layer/auth/model/token.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  String? id, full_name, username, email, country, phone, avatar, device_name;
  Token? token;


  User({this.id,
      this.full_name,
      this.username,
      this.email,
      this.country,
      this.phone,
      this.avatar,
      this.token,
      this.device_name
  });


  @override
  String toString() {
    return 'User{id: $id, full_name: $full_name, username: $username, email: $email, country: $country, phone: $phone, avatar: $avatar, token: $token, device_name: $device_name}';
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static Map<String, dynamic> toMap(User user){
    return _$UserToJson(user);
  }
}
