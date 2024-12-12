import 'package:get/get.dart';
import 'package:poultry_admin_panel/features.authentication/screens/forget_password/forget_password.dart';
import 'package:poultry_admin_panel/routes/routes.dart';
import 'package:poultry_admin_panel/routes/routes_middleware.dart';

import '../features.authentication/screens/dashboard/dashboard.dart';
import '../features.authentication/screens/login/login.dart';
import '../features.authentication/screens/reset_password/reset_password.dart';


class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.login, page: () => const LoginScreen()),
    GetPage(name: TRoutes.resetPassword, page: () => const ResetPasswordScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
    GetPage(name: TRoutes.dashboard, page: () => const DashboardScreen(), middlewares: [TRouteMiddleware()]),
  ];
}