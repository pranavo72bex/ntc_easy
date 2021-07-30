import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

// ignore: must_be_immutable
class FTTHRepair extends StatelessWidget {
  TextEditingController ftthrepairController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: ftthrepairController,
          decoration: InputDecoration(
            labelText: "TelePhone Number",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onSaved: (phoneNumber) {
            ftthrepairController.text = phoneNumber!;
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            _sendSMS("VL*NTADSL${ftthrepairController.text}", "1415");
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
