import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/utils/constants/sizes.dart';

import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenMobile extends StatelessWidget {
  const LoginScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Header
              TLoginHeader(),

              // Form
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}