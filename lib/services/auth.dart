import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  // sign in anon

  Future signInanon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      // ignore: deprecated_member_use
      FirebaseUser user = result.User;
      return user;

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password

  // sign out

}