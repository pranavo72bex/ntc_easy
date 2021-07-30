import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

// ignore: must_be_immutable
class BillInquiry extends StatelessWidget {
  TextEditingController billinquireController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: billinquireController,
          decoration: InputDecoration(
            labelText: "TelePhone Number",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onSaved: (phoneNumber) {
            billinquireController.text = phoneNumber!;
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            _sendSMS("CB*${billinquireController.text}", "1415");
          },
          child: Text("Inquiry"),
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
