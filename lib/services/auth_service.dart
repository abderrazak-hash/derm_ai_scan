import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final _firebaseAuth = FirebaseAuth.instance;

  static User? get currentUser => _firebaseAuth.currentUser;

  static Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  static Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<void> signupUser({
    required String email,
    required String password,
  }) async {
    _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // TODO : Create a new collection of users where we put phone and name
  }
}
