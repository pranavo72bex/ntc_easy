import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController phoneController, notempty;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    notempty = TextEditingController();
  }

  @override
  void onClose() {
    phoneController.dispose();
    notempty.dispose();
  }

  String? validatephone(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validateNotEmpty(String value) {
    if (value.isEmpty) {
      return "Can not empty";
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
}
