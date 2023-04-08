import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6K4eH9lf-Qe_A3cxVb3WqYIyW8K1wzcc",
            authDomain: "wopo-9c7a7.firebaseapp.com",
            projectId: "wopo-9c7a7",
            storageBucket: "wopo-9c7a7.appspot.com",
            messagingSenderId: "428616685285",
            appId: "1:428616685285:web:501badb0c26c74bc97a60c",
            measurementId: "G-654LL5YK13"));
  } else {
    await Firebase.initializeApp();
  }
}
