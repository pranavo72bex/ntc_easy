import 'package:get/get.dart';
import 'package:ntcservicecode/app/modules/find/bindings/find_binding.dart';
import 'package:ntcservicecode/app/modules/find/views/find_view.dart';
import 'package:ntcservicecode/app/modules/home/bindings/home_binding.dart';
import 'package:ntcservicecode/app/modules/home/views/home_view.dart';
import 'package:ntcservicecode/app/modules/info/bindings/info_binding.dart';
import 'package:ntcservicecode/app/modules/info/views/info_view.dart';
import 'package:ntcservicecode/app/modules/navigator/bindings/navigator_binding.dart';
import 'package:ntcservicecode/app/modules/navigator/views/navigator_view.dart';
import 'package:ntcservicecode/app/modules/scanner/bindings/scanner_binding.dart';
import 'package:ntcservicecode/app/modules/scanner/views/scanner_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATOR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATOR,
      page: () => AppNavigatorView(),
      binding: NavigatorBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => InfoView(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: _Paths.FIND,
      page: () => FindView(),
      binding: FindBinding(),
    ),
    GetPage(
      name: _Paths.scanner,
      page: () => ScannerView(),
      binding: ScannerBinding(),
    ),
  ];
}
