import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB5ai-AECIUbIXpHaSKlcmJyjY0YUXNZqk",
            authDomain: "meditacion-c4486.firebaseapp.com",
            projectId: "meditacion-c4486",
            storageBucket: "meditacion-c4486.firebasestorage.app",
            messagingSenderId: "1074731431841",
            appId: "1:1074731431841:web:81fe491b8f3f70fbe33de0"));
  } else {
    await Firebase.initializeApp();
  }
}
