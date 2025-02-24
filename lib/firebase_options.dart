// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAxuM-0ukxwJ-f5fUlmxfyS9gtoMb_pjko',
    appId: '1:943772629478:web:3651b777f2096401163e27',
    messagingSenderId: '943772629478',
    projectId: 'mynewapp-eace2',
    authDomain: 'mynewapp-eace2.firebaseapp.com',
    storageBucket: 'mynewapp-eace2.firebasestorage.app',
    measurementId: 'G-KQFWQW7DCJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8ruzQB6GAK1yiwbr2FrjqjqgJ50G1Ff8',
    appId: '1:943772629478:android:d176648955235402163e27',
    messagingSenderId: '943772629478',
    projectId: 'mynewapp-eace2',
    storageBucket: 'mynewapp-eace2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJZJwDHL3GuhDCfNYqh-1jvzzUTOpP5hY',
    appId: '1:943772629478:ios:cd5824c6834c16cb163e27',
    messagingSenderId: '943772629478',
    projectId: 'mynewapp-eace2',
    storageBucket: 'mynewapp-eace2.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJZJwDHL3GuhDCfNYqh-1jvzzUTOpP5hY',
    appId: '1:943772629478:ios:cd5824c6834c16cb163e27',
    messagingSenderId: '943772629478',
    projectId: 'mynewapp-eace2',
    storageBucket: 'mynewapp-eace2.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAxuM-0ukxwJ-f5fUlmxfyS9gtoMb_pjko',
    appId: '1:943772629478:web:f11fee9ef61fe336163e27',
    messagingSenderId: '943772629478',
    projectId: 'mynewapp-eace2',
    authDomain: 'mynewapp-eace2.firebaseapp.com',
    storageBucket: 'mynewapp-eace2.firebasestorage.app',
    measurementId: 'G-KCQXPJ0HMB',
  );
}
