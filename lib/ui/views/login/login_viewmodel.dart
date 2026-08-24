import 'package:flutter/material.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationServices = locator<NavigationService>();
  String email = "";
  String password = "";

  void login() {
    debugPrint("A email: $email");
    debugPrint("A password: $password");
    _navigationServices.navigateToHomeView();
  }

  void goToSignup() {
    _navigationServices.navigateToSingupView();
  }
}
