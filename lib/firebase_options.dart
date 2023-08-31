// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAiJ3G27GWbzzBh5Sa9QYLcKZtQNde_V44',
    appId: '1:942574746774:web:9c7e61b7aa7345610e96b7',
    messagingSenderId: '942574746774',
    projectId: 'fir-4257b',
    authDomain: 'fir-4257b.firebaseapp.com',
    storageBucket: 'fir-4257b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPU9p10a1bk8V__DLMZLNvmefcUc6mJ2g',
    appId: '1:942574746774:android:c64213973556b45f0e96b7',
    messagingSenderId: '942574746774',
    projectId: 'fir-4257b',
    storageBucket: 'fir-4257b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAa4OmyUW5Q6ckWEZA-B0DMyqyPgAjj9E',
    appId: '1:942574746774:ios:5f7586ac543c01380e96b7',
    messagingSenderId: '942574746774',
    projectId: 'fir-4257b',
    storageBucket: 'fir-4257b.appspot.com',
    iosClientId: '942574746774-41fi3ec3i4ms8hh67e5tgkf6pj479n7j.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginActivity',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAa4OmyUW5Q6ckWEZA-B0DMyqyPgAjj9E',
    appId: '1:942574746774:ios:97cabf6aa4c08fcd0e96b7',
    messagingSenderId: '942574746774',
    projectId: 'fir-4257b',
    storageBucket: 'fir-4257b.appspot.com',
    iosClientId: '942574746774-4i1kkpja4r7a0ed8emp369r6jk23c91i.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginActivity.RunnerTests',
  );
}
