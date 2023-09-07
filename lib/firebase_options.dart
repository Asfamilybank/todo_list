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
    apiKey: 'AIzaSyAhL9-LhURjCj2DjKeNyyNYHVwDwlA1LgI',
    appId: '1:530149445763:web:7b6e220fad9feaa8f60bb6',
    messagingSenderId: '530149445763',
    projectId: 'todo-list-asfamilybank',
    authDomain: 'todo-list-asfamilybank.firebaseapp.com',
    storageBucket: 'todo-list-asfamilybank.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuZDhqwVWybFmhmTZxp9OH0jF-xURKWSo',
    appId: '1:530149445763:android:0ef383b2eb23ca26f60bb6',
    messagingSenderId: '530149445763',
    projectId: 'todo-list-asfamilybank',
    storageBucket: 'todo-list-asfamilybank.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNd1bgv3B7i2Aex3pEIstHcVscw0LpsxE',
    appId: '1:530149445763:ios:07c23ac9c1acc868f60bb6',
    messagingSenderId: '530149445763',
    projectId: 'todo-list-asfamilybank',
    storageBucket: 'todo-list-asfamilybank.appspot.com',
    iosClientId: '530149445763-vf7rccirp16oliivvislrsmn1f5lqf6f.apps.googleusercontent.com',
    iosBundleId: 'com.asfamilybank.todoList',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNd1bgv3B7i2Aex3pEIstHcVscw0LpsxE',
    appId: '1:530149445763:ios:a1bbc46dc1e0b388f60bb6',
    messagingSenderId: '530149445763',
    projectId: 'todo-list-asfamilybank',
    storageBucket: 'todo-list-asfamilybank.appspot.com',
    iosClientId: '530149445763-b9v42pmisaokr88kvusqelgcjk4h50kc.apps.googleusercontent.com',
    iosBundleId: 'com.asfamilybank.todoList.RunnerTests',
  );
}