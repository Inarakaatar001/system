import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:poultry_admin_panel/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';
import 'data/abstract/repositories.authentication/authentication_repository.dart';

Future<void> main() async {
  // Ensure that widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX local storage


  // Remove # sign from url
  setPathUrlStrategy();

  // Initialize Firebase and Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  //Main app starts here

  runApp(const App());
}