import 'package:get/get.dart';
import 'package:ntcservicecode/app/modules/scanner/controllers/scanner_controller.dart';

class ScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScannerController>(
      () => ScannerController(),
    );
  }
}
