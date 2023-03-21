import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_pay_data_layer/auth/model/response.dart';
import 'package:smart_pay_data_layer/auth/model/token.dart';
import 'package:smart_pay_data_layer/utils/constants.dart';

import '../model/user.dart';

class AuthNetworkService {
  final _httpClient = http.Client();

  Future<Token?> getEmailToken(String email) async {
    try {
      final request = Uri.https(Constants.baseUrl, '/auth/email');
      final response = await _httpClient.post(request,
          headers: {
            'Content-Type': 'application/json',
            // 'Authorization': "Bearer ${Constants.apiKey}"
          },
          body: jsonEncode({'email': email}));

      if (response.statusCode != 200) return null;

      final statusResponse = StatusResponse.fromJson(jsonDecode(response.body));
      if(statusResponse.status != true || statusResponse.message != 'success' || statusResponse.data == null) return null;

      return Token.fromJson(statusResponse.data!);
    } on Exception catch (e) {
      return null;
    }
  }

  Future<Token?> verifyEmailToken(String token) async {
    try {
      final request = Uri.https(Constants.baseUrl, '/auth/email/verify');
      final response = await _httpClient.post(request,
          headers: {
            'Content-Type': 'application/json',
            // 'Authorization': "Bearer ${Constants.apiKey}"
          },
          body: jsonEncode({'token': token}));

      if (response.statusCode != 200) return null;

      final statusResponse = StatusResponse.fromJson(jsonDecode(response.body));
      if(statusResponse.status != true || statusResponse.message != 'success' || statusResponse.data == null) return null;

      return Token.fromJson(statusResponse.data!);
    } on Exception catch (e) {
      return null;
    }
  }

  Future<User?> registerUser(User user) async {
    try {
      final request = Uri.https(Constants.baseUrl, '/auth/register');
      final response = await _httpClient.post(request,
          headers: {
            'Content-Type': 'application/json',
            // 'Authorization': "Bearer ${Constants.apiKey}"
          },
          body: jsonEncode(User.toMap(user)));

      if (response.statusCode != 200) return null;

      final statusResponse = StatusResponse.fromJson(jsonDecode(response.body));
      if(statusResponse.status != true || statusResponse.message != 'success' || statusResponse.data == null) return null;

      return User.fromJson(statusResponse.data!);
    } on Exception catch (e) {
      return null;
    }
  }

  Future<User?> loginUser(User user) async {
    try {
      final request = Uri.https(Constants.baseUrl, '/auth/login');
      final response = await _httpClient.post(request,
          headers: {
            'Content-Type': 'application/json',
            // 'Authorization': "Bearer ${Constants.apiKey}"
          },
          body: jsonEncode(User.toMap(user)));

      if (response.statusCode != 200) return null;

      final statusResponse = StatusResponse.fromJson(jsonDecode(response.body));
      if(statusResponse.status != true || statusResponse.message != 'success' || statusResponse.data == null) return null;

      return User.fromJson(statusResponse.data!);
    } on Exception catch (e) {
      return null;
    }
  }

  Future<bool?> logoutUser(String token) async {
    try {
      final request = Uri.https(Constants.baseUrl, '/auth/logout');
      final response = await _httpClient.post(request,
          headers: {
            'Content-Type': 'application/json',
             'Authorization': "Bearer $token"
          });

      if (response.statusCode != 200) return null;

      return true;
    } on Exception catch (e) {
      return null;
    }
  }
}
