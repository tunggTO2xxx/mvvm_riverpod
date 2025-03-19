import 'package:mvvm_riverpod_base/app.dart';
import 'package:mvvm_riverpod_base/core/config/app_flavors.dart';

Future<void> main() async {
  AppFlavors.appFlavors = Environment.prod;
  setupAndRunApp();
}