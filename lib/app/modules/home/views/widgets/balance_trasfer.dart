// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class BalanceTrasfer extends StatelessWidget {
  TextEditingController BalanceTrasferNumberEditingController =
      TextEditingController();
  TextEditingController BalanceTrasferAmountEditingController =
      TextEditingController();
  TextEditingController SecurityCodeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: BalanceTrasferAmountEditingController,
          decoration: InputDecoration(
            labelText: "security Code :",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onSaved: (code) {
            SecurityCodeEditingController.text = code!;
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(
              "*422*${SecurityCodeEditingController.text}*${BalanceTrasferNumberEditingController.text}*${BalanceTrasferAmountEditingController.text}.#",
            );
          },
          child: Text("Trasfer"),
        )
      ],
    );
  }
}
