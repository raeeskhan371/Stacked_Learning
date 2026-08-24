import 'package:flutter/material.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:my_stacked_notes/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationServices = locator<NavigationService>();
  final _auth = locator<AuthService>();

  Future<void> login({required String email, required String password}) async {
    await _auth.logIn(email: email, password: password);
    goToHomeScreen();
  }

  void goToSignup() {
    _navigationServices.navigateToSingupView();
  }

  void goToHomeScreen() {
    _navigationServices.navigateToHomeView();
  }
}
