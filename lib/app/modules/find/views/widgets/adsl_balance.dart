import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

// ignore: must_be_immutable
class ADSLBalance extends StatelessWidget {
  TextEditingController AdslBalanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: AdslBalanceController,
          decoration: InputDecoration(
            labelText: "TelePhone Number",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onSaved: (phoneNumber) {
            AdslBalanceController.text = phoneNumber!;
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            _sendSMS("BL*NTADSL${AdslBalanceController.text}", "1415");
          },
          child: Text("Send"),
        )
      ],
    );
  }

  void _sendSMS(String message, recipents) async {
    String _result =
        await sendSMS(message: message, recipients: recipents).catchError(
      (onError) {
        print(onError);
      },
    );
    print(_result);
  }
}
