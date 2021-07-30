import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/find_controller.dart';

class FindView extends GetView<FindController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FindView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FindView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
