import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/services/firebase_service.dart';

class AuthService {
  final _auth = locator<FirebaseService>();

  Future<void> singUP({
    required String name,
    required String email,
    required String password,
  }) async {
    debugPrint("[FirebaseServices] Authentication Start");
    UserCredential userCredential =
        await _auth.Authentication.createUserWithEmailAndPassword(
            email: email, password: password);

    final uid = userCredential.user!.uid;

    debugPrint(
        "[FirebaseServices] Authentication End\n----------------------------------------------------");
    debugPrint(
        "[FirebaseServices] UserCreate Sucessfully\n----------------------------------------------------");

    debugPrint(
        "[FirebaseServices] UserData Saving Process Start\n----------------------------------------------------");

    addFormData(name: name, email: email, uid: uid);

    debugPrint(
        "[FirebaseServices] UserData Saving Process Completed\n----------------------------------------------------");
  }

  Future<void> addFormData(
      {required String name,
      required String email,
      required String uid}) async {
    _auth.FirebaseStorage.collection("Users").doc(uid).set({
      "name": name,
      "email": email,
      "cratedAt": FieldValue.serverTimestamp()
    });
  }

  Future<void> logIn({required String email, required String password}) async {
    debugPrint("[FirebaseServices] Login: Authentication Start");
    await _auth.Authentication.signInWithEmailAndPassword(
        email: email, password: password);
    debugPrint("[FirebaseServices] Login: Authentication End");
  }
}
