import 'package:flutter/material.dart';

import 'package:promilo_task/controler/services/authenthication_services.dart';
import 'package:promilo_task/core/utils/snackbar_utils.dart';
import 'package:promilo_task/model/user_model.dart';
import 'package:promilo_task/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    return true;
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    state = true;
    try {
      final token =
          await AuthService.login(UserModel(email: email, password: password));
      state = false;
      if (token!.token != '') {
        Future.sync(() => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
        Future.sync(
          () => showSnackBar(context, 'Successfully logged in', false),
        );
      }
    } catch (e) {
      state = false;
      Future.sync(
        () => showSnackBar(context, 'An error occured', true),
      );
    }
  }
}
