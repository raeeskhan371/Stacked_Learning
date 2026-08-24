import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text("LoginView"),
          centerTitle: true,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                viewModel.email = value;
              },
              decoration: const InputDecoration(
                labelText: 'email',
              ),
            ),
            TextField(
              onChanged: (value) {
                viewModel.password = value;
              },
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: viewModel.login,
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: viewModel.goToSignup,
              child: const Text('Create Account'),
            )
          ],
        ));
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
