import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScannerView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recharge Card Scanner'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScannerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
