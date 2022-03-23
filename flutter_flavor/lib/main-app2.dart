import 'package:flutter_flavor/services/flavor_config.dart';
import 'package:flutter/material.dart';
import 'main-common.dart';

void main() async {
  AppConfig devAppConfig = AppConfig(appName: "News App2", flavor: Flavors.APP2);
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}


/*

flutter run -t lib/main-app1.dart  --debug --flavor=app1
flutter run -t lib/main-app2.dart --flavor=app2
flutter run -t lib/main-app2.dart  --release --flavor=app2
flutter build appbundle -t lib/main-app2.dart  --flavor=app2
flutter build apk -t lib/main-app2.dart  --flavor=app2
*/