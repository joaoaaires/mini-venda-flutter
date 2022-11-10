import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minhavinda/app/routes/app_routes.dart';

import '../controllers/home_controller.dart';
import '../widgets/home_drawer_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldController,
      appBar: buildAppBar(),
      drawer: const HomeDrawerWidget(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Obx(() {
        final index = controller.drawerItemIndex.value;
        final item = controller.items[index];
        return Text(item.title);
      }),
    );
  }

  Widget buildBody() {
    final item = controller.items[0];
    return GetRouterOutlet(
      delegate: controller.routerController,
      anchorRoute: AppRoutes.init,
      initialRoute: item.route,
    );
  }
}
