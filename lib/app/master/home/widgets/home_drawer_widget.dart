import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeDrawerWidget extends GetWidget<HomeController> {
  const HomeDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("name"),
            accountEmail: Text("email@email.com"),
          ),
          Expanded(
            child: Obx(() {
              final items = controller.items;
              final itemIndex = controller.drawerItemIndex.value;

              return SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    items.length,
                    (index) {
                      final item = items[index];

                      return ListTile(
                        title: Text(item.title),
                        leading: Icon(item.icon),
                        selected: index == itemIndex,
                        onTap: () => controller.selectDrawerItemIndex(index),
                      );
                    },
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
