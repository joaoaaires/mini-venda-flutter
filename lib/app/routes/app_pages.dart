import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:minhavinda/app/master/home/controllers/home_bindings.dart';
import 'package:minhavinda/app/master/home/pages/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.init,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    //CLIENTE
    GetPage(
      name: AppRoutes.clienteList,
      page: () => Container(
        color: Colors.amber,
      ),
    ),
    //PRODUTO
    GetPage(
      name: AppRoutes.produtoList,
      page: () => Container(
        color: Colors.pink,
      ),
    ),
    //PEDIDO
    GetPage(
      name: AppRoutes.pedidoList,
      page: () => Container(
        color: Colors.blue,
      ),
    ),
  ];
}
