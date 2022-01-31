import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RbaysTriviaFirebaseUser {
  RbaysTriviaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RbaysTriviaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RbaysTriviaFirebaseUser> rbaysTriviaFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<RbaysTriviaFirebaseUser>(
        (user) => currentUser = RbaysTriviaFirebaseUser(user));
