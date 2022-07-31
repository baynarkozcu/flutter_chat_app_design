import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/user.dart';



class LoginService {
  static LoginService? _instance;
  static LoginService get instance {
    _instance ??= LoginService._init();
    return _instance!;
  }

  LoginService._init();

  Future<AuthUser> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final result = await FirebaseAuth.instance.signInWithCredential(credential);
    AuthUser user = AuthUser(email: result.user?.email ?? "", id: result.user?.uid ?? "");
    return user;
  }
}
