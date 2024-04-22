import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAQ8IT7JNVKzWgFLdNI1WKcX0Ri4uiNJ-U",
            authDomain: "exam-oek3v0.firebaseapp.com",
            projectId: "exam-oek3v0",
            storageBucket: "exam-oek3v0.appspot.com",
            messagingSenderId: "624106461940",
            appId: "1:624106461940:web:bcd366aca4a079d00b9ca1"));
  } else {
    await Firebase.initializeApp();
  }
}
