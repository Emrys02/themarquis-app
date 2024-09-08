import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:marquis_v2/env.dart';
import 'package:marquis_v2/models/user.dart';
import 'package:marquis_v2/providers/app_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part "user.g.dart";

final baseUrl = environment['apiUrl'];

@Riverpod(keepAlive: true)
class User extends _$User {
  //Details Declaration
  Box<UserData>? _hiveBox;

  @override
  UserData? build() {
    _hiveBox ??= Hive.box<UserData>("user");
    return _hiveBox!.get("user");
  }

  Future<void> getUser() async {
    final url = Uri.parse('$baseUrl/user/info');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': ref.read(appStateProvider).bearerToken
      },
    );
    if (response.statusCode != 200) {
      throw HttpException(
          'Request error with status code ${response.statusCode}.\nResponse:${utf8.decode(response.bodyBytes)}');
    }
    final decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    final user = UserData(
      id: decodedResponse['user']['id'].toString(),
      email: decodedResponse['user']['email'],
      role: decodedResponse['user']['role'],
      status: decodedResponse['user']['status'],
      points: decodedResponse['user']['points'],
      referredBy: decodedResponse['user']['referred_by'],
      referralId: decodedResponse['user']['referral_id'],
      walletId: decodedResponse['user']['wallet_id'],
      profileImageUrl: decodedResponse['user']['profile_image_url'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(
          decodedResponse['user']['created_at'] * 1000),
      updatedAt: DateTime.fromMicrosecondsSinceEpoch(
          decodedResponse['user']['updated_at'] * 1000),
      referralCode: decodedResponse['referral_code'],
      accountAddress: decodedResponse['account_address'],
      sessionId: decodedResponse['session_id'],
    );
    await _hiveBox!.put("user", user);
    state = user;
  }

  Future<void> clearData() async {
    _hiveBox!.delete("user");
    state = null;
  }

  Future<void> editUser(
    String firstName,
    String lastName,
    DateTime birthdate,
    String gender,
    String country,
    String fieldOfCareer,
  ) async {
    // await ref.read(natsServiceProvider.notifier).makeMicroserviceRequest(
    //       "jomfi.editUser.<user>",
    //       jsonEncode({
    //         'firstName': firstName,
    //         'lastName': lastName,
    //         'birthdate': birthdate.toIso8601String(),
    //         'gender': gender,
    //         'country': country,
    //         'fieldOfCareer': fieldOfCareer,
    //       }),
    //     );
    // state = state?.copyWith(
    //   firstName: firstName,
    //   lastName: lastName,
    //   birthdate: birthdate,
    //   gender: gender,
    //   country: country,
    //   fieldOfCareer: fieldOfCareer,
    // );
  }
}