import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_admin_panel/common/widgets/layouts/templates/login_template.dart';
import 'package:poultry_admin_panel/features.authentication/screens/forget_password/widgets/header_form.dart';



class ForgetPasswordDesktopTablet extends StatelessWidget {
  const ForgetPasswordDesktopTablet({super.key});


  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';

    return Container(color: Colors.grey.shade100,
      child: TLoginTemplate(
        child: Container(
          padding: const EdgeInsets.all(1),
          color: Colors.white,
          child: const Column(
            children: [
              /// Header
              HeaderAndForm()
            ],
          ),
        ),
      ),
    );
  }

}
