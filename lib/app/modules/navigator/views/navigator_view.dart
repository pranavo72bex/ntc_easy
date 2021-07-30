import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntcservicecode/app/modules/find/views/find_view.dart';
import 'package:ntcservicecode/app/modules/home/views/home_view.dart';
import 'package:ntcservicecode/app/modules/info/views/info_view.dart';
import 'package:ntcservicecode/app/modules/navigator/controllers/navigator_controller.dart';
import 'package:ntcservicecode/app/modules/settings/views/settings_view.dart';
import 'package:ntcservicecode/const/color_const.dart';

// ignore: must_be_immutable
class AppNavigatorView extends GetView<NavigatorController> {
  List<Widget> _pages = [HomeView(), InfoView(), FindView(), SettingsView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: kbackgroudcolor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          iconSize: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.initialState.value,
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.settings_ethernet_outlined,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.info_outline,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.settings,
                ))
          ],
          onTap: (index) {
            controller.changeState(index);
          },
        ),
      ),
      body: Obx(() => _pages[controller.initialState.value]),
    );
  }
}
