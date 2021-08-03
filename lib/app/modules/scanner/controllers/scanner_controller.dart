import 'package:flutter_mobile_vision_2/flutter_mobile_vision_2.dart';
import 'package:get/state_manager.dart';

class ScannerController extends GetxController {
  bool isscanning = false;
  List<OcrText> texts = [];
  @override
  void onInit() {
    FlutterMobileVision.start().then((x) {
      isscanning = true;
    });
    super.onInit();
  }

  startScanner() async {
    try {
      texts = await FlutterMobileVision.read(
        fps: 5.0,
        waitTap: true,
      );
    } on Exception {
      texts.add(new OcrText('Failed to recognize text.'));
    }
  }
}
