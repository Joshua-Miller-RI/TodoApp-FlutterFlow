import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAWRhyTtzglGKhYzNmiuaXHJ-wSigkBKjc",
            authDomain: "todo-f1c28.firebaseapp.com",
            projectId: "todo-f1c28",
            storageBucket: "todo-f1c28.firebasestorage.app",
            messagingSenderId: "610099581543",
            appId: "1:610099581543:web:851488201f78f1ae2abac2",
            measurementId: "G-XDNTRYQM0L"));
  } else {
    await Firebase.initializeApp();
  }
}
