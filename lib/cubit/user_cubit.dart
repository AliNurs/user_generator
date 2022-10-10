// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:user_generator/models/user_model.dart';
import 'package:user_generator/repositories/user_repo.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({
    required this.userRepo,
  }) : super(LoadingState());

  final UserRepo userRepo;

  Future<void> getUser() async {
    try {
      emit(LoadingState());

      final modelApi = await userRepo.getRandomUser();

      log('МОДЕЛ ВОЗВРАШАЕТ НАМ? $modelApi');
      emit(SuccesState(model: modelApi));

      log('ПРИШЛО ДАННЫЕ }');
    } catch (e) {
      log('НЕЧЕГО НЕТУ IN CUBIT, ИШИ ОШИБКУ!');
    }
  }
}

abstract class UserState {}

class LoadingState extends UserState {}

class InitialState extends UserState {}

class ErrorState extends UserState {}

class SuccesState extends UserState {
  SuccesState({
    required this.model,
  });
  final UserModel model;
}
