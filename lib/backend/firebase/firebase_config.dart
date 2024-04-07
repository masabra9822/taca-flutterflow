import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBQrRxhlwXiUUmznyuNXv4OBAT5fCknSHI",
            authDomain: "taca-e41da.firebaseapp.com",
            projectId: "taca-e41da",
            storageBucket: "taca-e41da.appspot.com",
            messagingSenderId: "93516784241",
            appId: "1:93516784241:web:12213f786f6fd24ee6f1d0",
            measurementId: "G-1SBZ3YRWNS"));
  } else {
    await Firebase.initializeApp();
  }
}
