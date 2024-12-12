import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_admin_panel/common/widgets/layouts/templates/login_template.dart';

import '../widgets/reset_password_widget.dart';

class ResetPasswordDesktopTablet extends StatelessWidget {
 const ResetPasswordDesktopTablet({super.key});

 @override
 Widget build(BuildContext context) {
   final email = Get.parameters['email'] ?? '';

   return Container(
     color: Colors.grey.shade100,
     child: const TLoginTemplate(
         child: const ResetPasswordWidget()
     ),
   );
 }
}
