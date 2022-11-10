import 'package:flutter/material.dart';

import 'app/app_widget.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  InjectionContainer().dependencies();

  runApp(AppWidget());
}
