// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:user_generator/models/user_model.dart';

class UserRepo {
  UserRepo({required this.dio});
  final Dio dio;

  Future<UserModel> getRandomUser() async {
    final result = await dio.get('api/');
    return UserModel.fromJson(result.data);
  }
}
