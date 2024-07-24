import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBfFw-D5urhPen0JHZ-YaZrd3Yb0Vw4xwA",
            authDomain: "restaurante-4rrhmp.firebaseapp.com",
            projectId: "restaurante-4rrhmp",
            storageBucket: "restaurante-4rrhmp.appspot.com",
            messagingSenderId: "397653096216",
            appId: "1:397653096216:web:2a8943037af345bf6f506d"));
  } else {
    await Firebase.initializeApp();
  }
}
