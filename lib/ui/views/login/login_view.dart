import 'package:flutter/material.dart';
import 'package:my_stacked_notes/ui/views/login/login_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: "email"),
  FormTextField(name: "password"),
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
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
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'email',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.login(
                    email: emailController.text,
                    password: passwordController.text);
              },
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
