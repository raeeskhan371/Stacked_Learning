// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';
const String NameValueKey = 'name';
const String ConfirmpassowrdValueKey = 'confirmpassowrd';

final Map<String, TextEditingController> _SingupViewTextEditingControllers = {};

final Map<String, FocusNode> _SingupViewFocusNodes = {};

final Map<String, String? Function(String?)?> _SingupViewTextValidations = {
  EmailValueKey: null,
  PasswordValueKey: null,
  NameValueKey: null,
  ConfirmpassowrdValueKey: null,
};

mixin $SingupView {
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  TextEditingController get confirmpassowrdController =>
      _getFormTextEditingController(ConfirmpassowrdValueKey);

  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);
  FocusNode get confirmpassowrdFocusNode =>
      _getFormFocusNode(ConfirmpassowrdValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_SingupViewTextEditingControllers.containsKey(key)) {
      return _SingupViewTextEditingControllers[key]!;
    }

    _SingupViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SingupViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SingupViewFocusNodes.containsKey(key)) {
      return _SingupViewFocusNodes[key]!;
    }
    _SingupViewFocusNodes[key] = FocusNode();
    return _SingupViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    nameController.addListener(() => _updateFormData(model));
    confirmpassowrdController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    nameController.addListener(() => _updateFormData(model));
    confirmpassowrdController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailValueKey: emailController.text,
          PasswordValueKey: passwordController.text,
          NameValueKey: nameController.text,
          ConfirmpassowrdValueKey: confirmpassowrdController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SingupViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SingupViewFocusNodes.values) {
      focusNode.dispose();
    }

    _SingupViewTextEditingControllers.clear();
    _SingupViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get nameValue => this.formValueMap[NameValueKey] as String?;
  String? get confirmpassowrdValue =>
      this.formValueMap[ConfirmpassowrdValueKey] as String?;

  set emailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailValueKey: value}),
    );

    if (_SingupViewTextEditingControllers.containsKey(EmailValueKey)) {
      _SingupViewTextEditingControllers[EmailValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_SingupViewTextEditingControllers.containsKey(PasswordValueKey)) {
      _SingupViewTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  set nameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NameValueKey: value}),
    );

    if (_SingupViewTextEditingControllers.containsKey(NameValueKey)) {
      _SingupViewTextEditingControllers[NameValueKey]?.text = value ?? '';
    }
  }

  set confirmpassowrdValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ConfirmpassowrdValueKey: value}),
    );

    if (_SingupViewTextEditingControllers.containsKey(
        ConfirmpassowrdValueKey)) {
      _SingupViewTextEditingControllers[ConfirmpassowrdValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);
  bool get hasName =>
      this.formValueMap.containsKey(NameValueKey) &&
      (nameValue?.isNotEmpty ?? false);
  bool get hasConfirmpassowrd =>
      this.formValueMap.containsKey(ConfirmpassowrdValueKey) &&
      (confirmpassowrdValue?.isNotEmpty ?? false);

  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;
  bool get hasConfirmpassowrdValidationMessage =>
      this.fieldsValidationMessages[ConfirmpassowrdValueKey]?.isNotEmpty ??
      false;

  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  String? get confirmpassowrdValidationMessage =>
      this.fieldsValidationMessages[ConfirmpassowrdValueKey];
}

extension Methods on FormStateHelper {
  void setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  void setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  void setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
  void setConfirmpassowrdValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfirmpassowrdValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    emailValue = '';
    passwordValue = '';
    nameValue = '';
    confirmpassowrdValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      NameValueKey: getValidationMessage(NameValueKey),
      ConfirmpassowrdValueKey: getValidationMessage(ConfirmpassowrdValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _SingupViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _SingupViewTextEditingControllers[key]?.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      NameValueKey: getValidationMessage(NameValueKey),
      ConfirmpassowrdValueKey: getValidationMessage(ConfirmpassowrdValueKey),
    });
