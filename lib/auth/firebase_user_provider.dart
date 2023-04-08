import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WopoFirebaseUser {
  WopoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WopoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WopoFirebaseUser> wopoFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WopoFirebaseUser>(
      (user) {
        currentUser = WopoFirebaseUser(user);
        return currentUser!;
      },
    );
