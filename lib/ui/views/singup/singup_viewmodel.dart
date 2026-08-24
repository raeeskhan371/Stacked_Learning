import 'package:flutter/cupertino.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SingupViewModel extends FormViewModel {
  final _Authentication = locator<AuthService>();

  final _navigationServices = locator<NavigationService>();

  Future<void> singUp(
      {required String name,
      required String email,
      required String password}) async {
    await _Authentication.singUP(name: name, email: email, password: password);
    debugPrint("[Singup] goToLogin Called()1");
    goToLogin();
  }

  void goToLogin() {
    _navigationServices.navigateToLoginView();
  }
}
