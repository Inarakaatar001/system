import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/routes/routes.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // Firebase Auth Instance
  final _auth = FirebaseAuth.instance;

  // Get Authenticated User Data
  User ? get authUser => _auth.currentUser;

  // Get isAuthenticated User
  bool get isAuthenticated => _auth.currentUser != null;
  @override
  void onReady() {
    _auth.setPersistence(Persistence.LOCAL);
  }
  //
  // // Function to determine the relevant screen and redirect accordingly.
  // void screenRedirect() async {
  //   final user = _auth.currentUser;
  //
  //   // if the user is logged in
  //   if(user != null) {
  //     // Navigate to the Home
  //     Get.offAllNamed(TRoutes.dashboard);
  //   } else {
  //     Get.offAllNamed(TRoutes.login)
  //   }
  // }
  // Login

  // REGISTER

  // REGISTER USER BY ADMIN

  // EMAIL VERIFICATION

  // FORGET PASSWORD

  // RE AUTHENTICATE USER

  // LOGOUT USER

  // DELETE



}