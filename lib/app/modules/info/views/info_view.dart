import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InfoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
