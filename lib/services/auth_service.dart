import 'package:my_stacked_notes/app/app.locator.dart';
import 'package:my_stacked_notes/services/firebase_service.dart';

class AuthService {
  final _auth = locator<FirebaseService>();

  Future<void> singUP({
    required String name,
    required String email,
    required String password,
  }) async {
    await _auth.Authentication.createUserWithEmailAndPassword(email: email, password: password);
  }
}
