// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/state_manager.dart';
import 'package:ntcservicecode/app/modules/home/controllers/home_controller.dart';

// ignore: must_be_immutable
class BalanceTrasfer extends GetView<HomeController> {
  TextEditingController BalanceTrasferNumberEditingController =
      TextEditingController();
  TextEditingController BalanceTrasferAmountEditingController =
      TextEditingController();
  TextEditingController SecurityCodeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              controller: BalanceTrasferNumberEditingController,
              decoration: InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSaved: (phoneNumber) {
                BalanceTrasferNumberEditingController.text = phoneNumber!;
              },
              validator: (value) {
                return controller.validatephone(value!);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: BalanceTrasferAmountEditingController,
              decoration: InputDecoration(
                labelText: "RS :",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSaved: (amount) {
                BalanceTrasferAmountEditingController.text = amount!;
              },
              validator: (value) {
                return controller.validateNotEmpty(value!);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: SecurityCodeEditingController,
              decoration: InputDecoration(
                labelText: "security Code :",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSaved: (code) {
                SecurityCodeEditingController.text = code!;
              },
              validator: (value) {
                return controller.validateNotEmpty(value!);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                controller.checkvalidation();
                if (controller.formKey.currentState!.validate()) {
                  await FlutterPhoneDirectCaller.callNumber(
                    "*422*${SecurityCodeEditingController.text}*${BalanceTrasferNumberEditingController.text}*${BalanceTrasferAmountEditingController.text}.#",
                  );
                }
              },
              child: Text("Trasfer"),
            )
          ],
        ),
      ),
    );
  }
}
