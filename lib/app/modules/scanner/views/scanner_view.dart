import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:get/state_manager.dart';
import 'package:ntcservicecode/app/modules/scanner/controllers/scanner_controller.dart';

// ignore: must_be_immutable
class ScannerView extends GetView<ScannerController> {
  TextEditingController scantextController = TextEditingController();
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
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: scantextController,
                decoration: InputDecoration(
                  labelText: "Recharge Pin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onSaved: (rechargepin) {
                  scantextController.text = rechargepin!;
                },
                validator: (value) {
                  return controller.validatephone(value!);
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Scan Recharge Card"),
                  onPressed: () async {
                    controller.startScanner();
                    await FlutterPhoneDirectCaller.callNumber(
                      "*1415#${scantextController.text}#",
                    );
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
