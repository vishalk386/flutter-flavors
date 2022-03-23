
enum Flavors{
  APP1,
  APP2
}

class AppConfig {
  final String appName;
  final Flavors flavor;
  AppConfig({required this.appName, required this.flavor});
}