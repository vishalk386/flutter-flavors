import 'package:flutter/material.dart';
import 'package:flutter_flavor/services/flavor_config.dart';


Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(appConfig: appConfig);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key,  required this.appConfig}) : super(key: key);
  final AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: appConfig.flavor == Flavors.APP1 ? Text("APP 1") : Text("APP 2") ,
        backgroundColor: appConfig.flavor == Flavors.APP1 ? Colors.red : Colors.green ,
      ),
          body: Container(
      ),
    )
    );
  }
}