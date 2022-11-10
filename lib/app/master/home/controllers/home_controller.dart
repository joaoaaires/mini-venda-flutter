import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../models/home_drawer_item_model.dart';

class HomeController extends GetxController {
  final drawerItemIndex = 0.obs;

  final scaffoldController = GlobalKey<ScaffoldState>();
  final routerController = GetDelegate();

  late List<HomeDrawerItemModel> items;

  @override
  void onInit() {
    super.onInit();
    items = <HomeDrawerItemModel>[
      HomeDrawerItemModel(
        title: "Cliente",
        icon: Icons.person,
        route: AppRoutes.clienteList,
      ),
      HomeDrawerItemModel(
        title: "Pedido",
        icon: Icons.person,
        route: AppRoutes.pedidoList,
      ),
      HomeDrawerItemModel(
        title: "Produto",
        icon: Icons.person,
        route: AppRoutes.produtoList,
      ),
    ];
  }

  void selectDrawerItemIndex(int index) {
    scaffoldController.currentState?.openEndDrawer();
    routerController.toNamed(items[index].route);
    drawerItemIndex.value = index;
  }
}
