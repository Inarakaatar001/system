import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poultry_admin_panel/data/abstract/repositories.authentication/authentication_repository.dart';
import 'package:poultry_admin_panel/routes/routes.dart';

class TRouteMiddleware extends GetMiddleware{
  @override
  RouteSettings? redirect(String? route) {
    return AuthenticationRepository.instance.isAuthenticated ? null : RouteSettings(name: TRoutes.login);
  }
}