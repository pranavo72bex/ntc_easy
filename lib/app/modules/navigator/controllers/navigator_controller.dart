import 'package:get/get.dart';

class NavigatorController extends GetxController {
  var initialState = 0.obs;
  void changeState(value) {
    initialState.value = value;
  }
}
