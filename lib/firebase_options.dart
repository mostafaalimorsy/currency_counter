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
    apiKey: 'AIzaSyDamd8FoFJZ3vvj1Z3GhINyHQ05XHgNYmg',
    appId: '1:756940179734:web:604740b3579066cf092837',
    messagingSenderId: '756940179734',
    projectId: 'money-counter-3b836',
    authDomain: 'money-counter-3b836.firebaseapp.com',
    storageBucket: 'money-counter-3b836.appspot.com',
    measurementId: 'G-F2VN23Z7TJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtxA9Fd-UHLvGZ0ISwmR-37bAkaqlBB3w',
    appId: '1:756940179734:android:8c66fab07c1932bc092837',
    messagingSenderId: '756940179734',
    projectId: 'money-counter-3b836',
    storageBucket: 'money-counter-3b836.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNfTOpvsFQYdDIZgszKGVAtzGqdAcmdxk',
    appId: '1:756940179734:ios:75ad0d5014e2b7ba092837',
    messagingSenderId: '756940179734',
    projectId: 'money-counter-3b836',
    storageBucket: 'money-counter-3b836.appspot.com',
    iosClientId: '756940179734-4ohoj1j810o8hck9obr50gibfgvh106f.apps.googleusercontent.com',
    iosBundleId: 'com.example.currencyCounter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNfTOpvsFQYdDIZgszKGVAtzGqdAcmdxk',
    appId: '1:756940179734:ios:75ad0d5014e2b7ba092837',
    messagingSenderId: '756940179734',
    projectId: 'money-counter-3b836',
    storageBucket: 'money-counter-3b836.appspot.com',
    iosClientId: '756940179734-4ohoj1j810o8hck9obr50gibfgvh106f.apps.googleusercontent.com',
    iosBundleId: 'com.example.currencyCounter',
  );
}
