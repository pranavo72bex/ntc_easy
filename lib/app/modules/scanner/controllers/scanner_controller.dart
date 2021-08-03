import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision_2/flutter_mobile_vision_2.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ScannerController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController phoneController;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();

    FlutterMobileVision.start().then((x) {
      isscanning = true;
    });
  }

  @override
  void onClose() {
    phoneController.dispose();
  }

  String? validatephone(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  void checkvalidation() {
    final isvaild = formKey.currentState!.validate();
    if (!isvaild) {
      return null;
    }
    formKey.currentState!.save();
  }

  //scanning logic
  bool isscanning = false;
  List<OcrText> texts = [];

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
