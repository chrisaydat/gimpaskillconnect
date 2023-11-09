import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-Z6POI_qpEgRdzfDv6xLPrUnKKww8yRk",
            authDomain: "gimpaskillconnect.firebaseapp.com",
            projectId: "gimpaskillconnect",
            storageBucket: "gimpaskillconnect.appspot.com",
            messagingSenderId: "979685410658",
            appId: "1:979685410658:web:50e53881aeb22474cc0e3b",
            measurementId: "G-68FY4101TT"));
  } else {
    await Firebase.initializeApp();
  }
}
