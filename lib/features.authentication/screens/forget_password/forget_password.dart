import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:poultry_admin_panel/features.authentication/screens/forget_password/responsive_screens/forget_password_desktop_tablet.dart';
import 'package:poultry_admin_panel/features.authentication/screens/forget_password/responsive_screens/forget_password_mobile.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(useLayout: false,desktop: ForgetPasswordDesktopTablet(),mobile: ForgetPasswordMobile(),);
  }
}