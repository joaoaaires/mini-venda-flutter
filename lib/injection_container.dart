import 'package:get/get.dart';

import 'app/core/database/database_info.dart';

class InjectionContainer extends Bindings {
  @override
  void dependencies() {
    // Core
    Get.put(DatabaseInfo.instance);
  }
}
