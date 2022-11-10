import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      defaultTransition: Transition.fade,
      initialRoute: AppRoutes.init,
      getPages: AppPages.pages,
      locale: const Locale('pt', 'BR'),
    );
  }
}
