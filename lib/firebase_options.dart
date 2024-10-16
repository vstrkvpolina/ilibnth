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
    apiKey: 'AIzaSyCqjmEys7X9YEtNRTtydSCiNqcTKrDgOK4',
    appId: '1:170785786032:web:ec5372891b3f68cdb5d375',
    messagingSenderId: '170785786032',
    projectId: 'goals-46472',
    authDomain: 'goals-46472.firebaseapp.com',
    databaseURL: 'https://goals-46472-default-rtdb.firebaseio.com',
    storageBucket: 'goals-46472.appspot.com',
    measurementId: 'G-MGSW661XRE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqYihfFL-gKlZ88POn86bmXlbAM_CLzJQ',
    appId: '1:170785786032:android:96a3f67953033a36b5d375',
    messagingSenderId: '170785786032',
    projectId: 'goals-46472',
    databaseURL: 'https://goals-46472-default-rtdb.firebaseio.com',
    storageBucket: 'goals-46472.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACzGfss35XN-Yg2ceuhQsRP53KJgAe7U4',
    appId: '1:170785786032:ios:1e3f3286009b55c6b5d375',
    messagingSenderId: '170785786032',
    projectId: 'goals-46472',
    databaseURL: 'https://goals-46472-default-rtdb.firebaseio.com',
    storageBucket: 'goals-46472.appspot.com',
    iosBundleId: 'com.example.ilibnth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACzGfss35XN-Yg2ceuhQsRP53KJgAe7U4',
    appId: '1:170785786032:ios:1e3f3286009b55c6b5d375',
    messagingSenderId: '170785786032',
    projectId: 'goals-46472',
    databaseURL: 'https://goals-46472-default-rtdb.firebaseio.com',
    storageBucket: 'goals-46472.appspot.com',
    iosBundleId: 'com.example.ilibnth',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCqjmEys7X9YEtNRTtydSCiNqcTKrDgOK4',
    appId: '1:170785786032:web:fef8c79d3f4406c7b5d375',
    messagingSenderId: '170785786032',
    projectId: 'goals-46472',
    authDomain: 'goals-46472.firebaseapp.com',
    databaseURL: 'https://goals-46472-default-rtdb.firebaseio.com',
    storageBucket: 'goals-46472.appspot.com',
    measurementId: 'G-ZLJP72VCMH',
  );
}
