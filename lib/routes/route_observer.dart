
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_admin_panel/routes/routes.dart';

import '../common/widgets/layouts/sidebars/sidebar_controller.dart';

class RouteObserver extends GetObserver{

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if(previousRoute != null) {
      //check route name n update active item in the sidebar
      for(var routeName in TRoutes.sidebarMenuItems) {
        if (previousRoute.settings.name == routeName) {
          sidebarController.activeItem.value = routeName;
        }
      }
    }
  }
  //
  // @override
  // void didPush(Route route, Route previousRoute) {
  //   final sidebarController = Get.put(SidebarController());
  //
  //   if (route != null) {
  //     //check route name n update active item
  //     for( var routeName in TRoutes.sidebarMenuItems){
  //       if(route.settings.name == routeName) {
  //         sidebarController.activeItem.value = routeName;
  //       }
  //     }
  //   }
  // }
}