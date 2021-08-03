import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';
import 'package:ntcservicecode/app/modules/scanner/controllers/scanner_controller.dart';

class ScannerView extends GetView<ScannerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recharge Card Scanner'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(controller.texts.toString()),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Scan Recharge Card"),
                  onPressed: () {
                    controller.startScanner();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
